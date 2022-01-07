
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct tcf_proto {int root; } ;
struct TYPE_4__ {int nkeys; int flags; unsigned int hoff; int off; unsigned int offoff; int offmask; int offshift; struct tc_u32_key* keys; } ;
struct tc_u_knode {int mask; int val; int ht_up; TYPE_2__ sel; int fshift; int ht_down; int next; int exts; TYPE_1__* pf; int ifindex; struct tcf_result res; int * pcpu_success; int flags; } ;
struct tc_u_hnode {int divisor; int * ht; } ;
struct tc_u32_key {unsigned int off; int offmask; int val; int mask; } ;
struct sk_buff {int mark; unsigned int len; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_3__ {int rhit; int * kcnts; int rcnt; } ;


 scalar_t__ INT_MAX ;
 int TC_U32_EAT ;
 int TC_U32_MAXDEPTH ;
 int TC_U32_OFFSET ;
 int TC_U32_TERMINAL ;
 int TC_U32_VAROFFSET ;
 int __this_cpu_inc (int ) ;
 int net_warn_ratelimited (char*) ;
 int ntohs (int) ;
 void* rcu_dereference_bh (int ) ;
 int* skb_header_pointer (struct sk_buff*,unsigned int,int,int*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 scalar_t__ tc_skip_sw (int ) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 int tcf_match_indev (struct sk_buff*,int ) ;
 int u32_hash_fold (int,TYPE_2__*,int ) ;

__attribute__((used)) static int u32_classify(struct sk_buff *skb, const struct tcf_proto *tp,
   struct tcf_result *res)
{
 struct {
  struct tc_u_knode *knode;
  unsigned int off;
 } stack[TC_U32_MAXDEPTH];

 struct tc_u_hnode *ht = rcu_dereference_bh(tp->root);
 unsigned int off = skb_network_offset(skb);
 struct tc_u_knode *n;
 int sdepth = 0;
 int off2 = 0;
 int sel = 0;



 int i, r;

next_ht:
 n = rcu_dereference_bh(ht->ht[sel]);

next_knode:
 if (n) {
  struct tc_u32_key *key = n->sel.keys;






  if (tc_skip_sw(n->flags)) {
   n = rcu_dereference_bh(n->next);
   goto next_knode;
  }
  for (i = n->sel.nkeys; i > 0; i--, key++) {
   int toff = off + key->off + (off2 & key->offmask);
   __be32 *data, hdata;

   if (skb_headroom(skb) + toff > INT_MAX)
    goto out;

   data = skb_header_pointer(skb, toff, 4, &hdata);
   if (!data)
    goto out;
   if ((*data ^ key->val) & key->mask) {
    n = rcu_dereference_bh(n->next);
    goto next_knode;
   }




  }

  ht = rcu_dereference_bh(n->ht_down);
  if (!ht) {
check_terminal:
   if (n->sel.flags & TC_U32_TERMINAL) {

    *res = n->res;
    if (!tcf_match_indev(skb, n->ifindex)) {
     n = rcu_dereference_bh(n->next);
     goto next_knode;
    }



    r = tcf_exts_exec(skb, &n->exts, res);
    if (r < 0) {
     n = rcu_dereference_bh(n->next);
     goto next_knode;
    }

    return r;
   }
   n = rcu_dereference_bh(n->next);
   goto next_knode;
  }


  if (sdepth >= TC_U32_MAXDEPTH)
   goto deadloop;
  stack[sdepth].knode = n;
  stack[sdepth].off = off;
  sdepth++;

  ht = rcu_dereference_bh(n->ht_down);
  sel = 0;
  if (ht->divisor) {
   __be32 *data, hdata;

   data = skb_header_pointer(skb, off + n->sel.hoff, 4,
        &hdata);
   if (!data)
    goto out;
   sel = ht->divisor & u32_hash_fold(*data, &n->sel,
         n->fshift);
  }
  if (!(n->sel.flags & (TC_U32_VAROFFSET | TC_U32_OFFSET | TC_U32_EAT)))
   goto next_ht;

  if (n->sel.flags & (TC_U32_OFFSET | TC_U32_VAROFFSET)) {
   off2 = n->sel.off + 3;
   if (n->sel.flags & TC_U32_VAROFFSET) {
    __be16 *data, hdata;

    data = skb_header_pointer(skb,
         off + n->sel.offoff,
         2, &hdata);
    if (!data)
     goto out;
    off2 += ntohs(n->sel.offmask & *data) >>
     n->sel.offshift;
   }
   off2 &= ~3;
  }
  if (n->sel.flags & TC_U32_EAT) {
   off += off2;
   off2 = 0;
  }

  if (off < skb->len)
   goto next_ht;
 }


 if (sdepth--) {
  n = stack[sdepth].knode;
  ht = rcu_dereference_bh(n->ht_up);
  off = stack[sdepth].off;
  goto check_terminal;
 }
out:
 return -1;

deadloop:
 net_warn_ratelimited("cls_u32: dead loop\n");
 return -1;
}

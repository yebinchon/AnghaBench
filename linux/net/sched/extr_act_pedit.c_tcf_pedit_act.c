
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tcf_result {int dummy; } ;
struct tcf_pedit_key_ex {int htype; int cmd; } ;
struct TYPE_2__ {int overlimits; } ;
struct tcf_pedit {int tcf_action; int tcfp_nkeys; int tcf_lock; int tcf_bstats; TYPE_1__ tcf_qstats; int tcf_index; struct tcf_pedit_key_ex* tcfp_keys_ex; struct tc_pedit_key* tcfp_keys; int tcf_tm; } ;
struct tc_pedit_key {int off; int offmask; int at; int shift; int val; int mask; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int hdata ;
typedef enum pedit_header_type { ____Placeholder_pedit_header_type } pedit_header_type ;
typedef enum pedit_cmd { ____Placeholder_pedit_cmd } pedit_cmd ;
typedef int _d ;


 int GFP_ATOMIC ;


 int TCA_PEDIT_KEY_EX_HDR_TYPE_NETWORK ;
 int WARN (int,char*,int ) ;
 int bstats_update (int *,struct sk_buff*) ;
 int offset_valid (struct sk_buff*,int) ;
 int pedit_skb_hdr_offset (struct sk_buff*,int,int*) ;
 int pr_info (char*,...) ;
 int* skb_header_pointer (struct sk_buff*,int,int,int*) ;
 int skb_store_bits (struct sk_buff*,int,int*,int) ;
 scalar_t__ skb_unclone (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_pedit* to_pedit (struct tc_action const*) ;

__attribute__((used)) static int tcf_pedit_act(struct sk_buff *skb, const struct tc_action *a,
    struct tcf_result *res)
{
 struct tcf_pedit *p = to_pedit(a);
 int i;

 if (skb_unclone(skb, GFP_ATOMIC))
  return p->tcf_action;

 spin_lock(&p->tcf_lock);

 tcf_lastuse_update(&p->tcf_tm);

 if (p->tcfp_nkeys > 0) {
  struct tc_pedit_key *tkey = p->tcfp_keys;
  struct tcf_pedit_key_ex *tkey_ex = p->tcfp_keys_ex;
  enum pedit_header_type htype =
   TCA_PEDIT_KEY_EX_HDR_TYPE_NETWORK;
  enum pedit_cmd cmd = 128;

  for (i = p->tcfp_nkeys; i > 0; i--, tkey++) {
   u32 *ptr, hdata;
   int offset = tkey->off;
   int hoffset;
   u32 val;
   int rc;

   if (tkey_ex) {
    htype = tkey_ex->htype;
    cmd = tkey_ex->cmd;

    tkey_ex++;
   }

   rc = pedit_skb_hdr_offset(skb, htype, &hoffset);
   if (rc) {
    pr_info("tc action pedit bad header type specified (0x%x)\n",
     htype);
    goto bad;
   }

   if (tkey->offmask) {
    u8 *d, _d;

    if (!offset_valid(skb, hoffset + tkey->at)) {
     pr_info("tc action pedit 'at' offset %d out of bounds\n",
      hoffset + tkey->at);
     goto bad;
    }
    d = skb_header_pointer(skb, hoffset + tkey->at,
             sizeof(_d), &_d);
    if (!d)
     goto bad;
    offset += (*d & tkey->offmask) >> tkey->shift;
   }

   if (offset % 4) {
    pr_info("tc action pedit offset must be on 32 bit boundaries\n");
    goto bad;
   }

   if (!offset_valid(skb, hoffset + offset)) {
    pr_info("tc action pedit offset %d out of bounds\n",
     hoffset + offset);
    goto bad;
   }

   ptr = skb_header_pointer(skb, hoffset + offset,
       sizeof(hdata), &hdata);
   if (!ptr)
    goto bad;

   switch (cmd) {
   case 128:
    val = tkey->val;
    break;
   case 129:
    val = (*ptr + tkey->val) & ~tkey->mask;
    break;
   default:
    pr_info("tc action pedit bad command (%d)\n",
     cmd);
    goto bad;
   }

   *ptr = ((*ptr & tkey->mask) ^ val);
   if (ptr == &hdata)
    skb_store_bits(skb, hoffset + offset, ptr, 4);
  }

  goto done;
 } else {
  WARN(1, "pedit BUG: index %d\n", p->tcf_index);
 }

bad:
 p->tcf_qstats.overlimits++;
done:
 bstats_update(&p->tcf_bstats, skb);
 spin_unlock(&p->tcf_lock);
 return p->tcf_action;
}

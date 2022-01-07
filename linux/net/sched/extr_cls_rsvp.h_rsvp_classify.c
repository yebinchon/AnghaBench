
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct tcf_result {scalar_t__ classid; } ;
struct tcf_proto {int root; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int mask; int offset; int key; } ;
struct rsvp_session {scalar_t__* dst; scalar_t__ protocol; scalar_t__ tunnelid; int * ht; TYPE_1__ dpi; int next; } ;
struct rsvp_head {int * ht; } ;
struct TYPE_4__ {int mask; int offset; int key; } ;
struct rsvp_filter {scalar_t__* src; scalar_t__ tunnelhdr; struct tcf_result res; int next; TYPE_2__ spi; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ nexthdr; scalar_t__ protocol; int ihl; } ;
typedef scalar_t__ __be32 ;


 int RSVP_APPLY_RESULT () ;
 int RSVP_DST_LEN ;
 unsigned int hash_dst (scalar_t__*,scalar_t__,scalar_t__) ;
 unsigned int hash_src (scalar_t__*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int pskb_network_may_pull (struct sk_buff*,int) ;
 void* rcu_dereference_bh (int ) ;

__attribute__((used)) static int rsvp_classify(struct sk_buff *skb, const struct tcf_proto *tp,
    struct tcf_result *res)
{
 struct rsvp_head *head = rcu_dereference_bh(tp->root);
 struct rsvp_session *s;
 struct rsvp_filter *f;
 unsigned int h1, h2;
 __be32 *dst, *src;
 u8 protocol;
 u8 tunnelid = 0;
 u8 *xprt;







 struct iphdr *nhptr;

 if (!pskb_network_may_pull(skb, sizeof(*nhptr)))
  return -1;
 nhptr = ip_hdr(skb);

restart:







 src = &nhptr->saddr;
 dst = &nhptr->daddr;
 protocol = nhptr->protocol;
 xprt = ((u8 *)nhptr) + (nhptr->ihl<<2);
 if (ip_is_fragment(nhptr))
  return -1;


 h1 = hash_dst(dst, protocol, tunnelid);
 h2 = hash_src(src);

 for (s = rcu_dereference_bh(head->ht[h1]); s;
      s = rcu_dereference_bh(s->next)) {
  if (dst[RSVP_DST_LEN-1] == s->dst[RSVP_DST_LEN - 1] &&
      protocol == s->protocol &&
      !(s->dpi.mask &
        (*(u32 *)(xprt + s->dpi.offset) ^ s->dpi.key)) &&





      tunnelid == s->tunnelid) {

   for (f = rcu_dereference_bh(s->ht[h2]); f;
        f = rcu_dereference_bh(f->next)) {
    if (src[RSVP_DST_LEN-1] == f->src[RSVP_DST_LEN - 1] &&
        !(f->spi.mask & (*(u32 *)(xprt + f->spi.offset) ^ f->spi.key))






        ) {
     *res = f->res;
     RSVP_APPLY_RESULT();

matched:
     if (f->tunnelhdr == 0)
      return 0;

     tunnelid = f->res.classid;
     nhptr = (void *)(xprt + f->tunnelhdr - sizeof(*nhptr));
     goto restart;
    }
   }


   for (f = rcu_dereference_bh(s->ht[16]); f;
        f = rcu_dereference_bh(f->next)) {
    *res = f->res;
    RSVP_APPLY_RESULT();
    goto matched;
   }
   return -1;
  }
 }
 return -1;
}

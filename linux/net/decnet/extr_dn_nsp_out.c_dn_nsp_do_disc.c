
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int sk; } ;
struct dst_entry {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ __le16 ;


 unsigned char NSP_DISCINIT ;
 scalar_t__ cpu_to_le16 (unsigned short) ;
 struct sk_buff* dn_alloc_skb (struct sock*,int,int ) ;
 int dst_clone (struct dst_entry*) ;
 int dst_output (int *,int ,struct sk_buff*) ;
 int init_net ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int net_dbg_ratelimited (char*,int ,struct dst_entry*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static __inline__ void dn_nsp_do_disc(struct sock *sk, unsigned char msgflg,
   unsigned short reason, gfp_t gfp,
   struct dst_entry *dst,
   int ddl, unsigned char *dd, __le16 rem, __le16 loc)
{
 struct sk_buff *skb = ((void*)0);
 int size = 7 + ddl + ((msgflg == NSP_DISCINIT) ? 1 : 0);
 unsigned char *msg;

 if ((dst == ((void*)0)) || (rem == 0)) {
  net_dbg_ratelimited("DECnet: dn_nsp_do_disc: BUG! Please report this to SteveW@ACM.org rem=%u dst=%p\n",
        le16_to_cpu(rem), dst);
  return;
 }

 if ((skb = dn_alloc_skb(sk, size, gfp)) == ((void*)0))
  return;

 msg = skb_put(skb, size);
 *msg++ = msgflg;
 *(__le16 *)msg = rem;
 msg += 2;
 *(__le16 *)msg = loc;
 msg += 2;
 *(__le16 *)msg = cpu_to_le16(reason);
 msg += 2;
 if (msgflg == NSP_DISCINIT)
  *msg++ = ddl;

 if (ddl) {
  memcpy(msg, dd, ddl);
 }






 skb_dst_set(skb, dst_clone(dst));
 dst_output(&init_net, skb->sk, skb);
}

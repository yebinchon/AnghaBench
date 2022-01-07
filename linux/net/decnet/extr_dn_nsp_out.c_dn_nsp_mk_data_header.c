
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_skb_cb {int segnum; int nsp_flags; } ;
struct dn_scp {int numdat; int numoth; } ;
typedef int __le16 ;


 struct dn_scp* DN_SK (struct sock*) ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int * dn_mk_ack_header (struct sock*,struct sk_buff*,int ,int,int) ;
 int seq_add (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __le16 *dn_nsp_mk_data_header(struct sock *sk, struct sk_buff *skb, int oth)
{
 struct dn_scp *scp = DN_SK(sk);
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 __le16 *ptr = dn_mk_ack_header(sk, skb, cb->nsp_flags, 11, oth);

 if (unlikely(oth)) {
  cb->segnum = scp->numoth;
  seq_add(&scp->numoth, 1);
 } else {
  cb->segnum = scp->numdat;
  seq_add(&scp->numdat, 1);
 }
 *(ptr++) = cpu_to_le16(cb->segnum);

 return ptr;
}

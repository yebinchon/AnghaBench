
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct TYPE_3__ {int pg_vec; } ;
struct packet_sock {int skb_completion; TYPE_1__ tx_ring; } ;
typedef int __u32 ;


 int TP_STATUS_AVAILABLE ;
 int __packet_set_status (struct packet_sock*,void*,int) ;
 int __packet_set_timestamp (struct packet_sock*,void*,struct sk_buff*) ;
 int complete (int *) ;
 scalar_t__ likely (int ) ;
 int packet_dec_pending (TYPE_1__*) ;
 int packet_read_pending (TYPE_1__*) ;
 struct packet_sock* pkt_sk (int ) ;
 void* skb_zcopy_get_nouarg (struct sk_buff*) ;
 int sock_wfree (struct sk_buff*) ;

__attribute__((used)) static void tpacket_destruct_skb(struct sk_buff *skb)
{
 struct packet_sock *po = pkt_sk(skb->sk);

 if (likely(po->tx_ring.pg_vec)) {
  void *ph;
  __u32 ts;

  ph = skb_zcopy_get_nouarg(skb);
  packet_dec_pending(&po->tx_ring);

  ts = __packet_set_timestamp(po, ph, skb);
  __packet_set_status(po, ph, TP_STATUS_AVAILABLE | ts);

  if (!packet_read_pending(&po->tx_ring))
   complete(&po->skb_completion);
 }

 sock_wfree(skb);
}

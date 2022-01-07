
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_tx_send_packet ) (struct sock*,struct sk_buff*) ;} ;


 int CCID_PACKET_SEND_AT_ONCE ;
 int stub1 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline int ccid_hc_tx_send_packet(struct ccid *ccid, struct sock *sk,
      struct sk_buff *skb)
{
 if (ccid->ccid_ops->ccid_hc_tx_send_packet != ((void*)0))
  return ccid->ccid_ops->ccid_hc_tx_send_packet(sk, skb);
 return CCID_PACKET_SEND_AT_ONCE;
}

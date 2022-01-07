
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int* data; } ;
struct TYPE_2__ {scalar_t__ pgn; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;


 int J1939_PGN_ADDRESS_CLAIMED ;
 scalar_t__ J1939_PGN_REQUEST ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;

__attribute__((used)) static inline bool j1939_ac_msg_is_request(struct sk_buff *skb)
{
 struct j1939_sk_buff_cb *skcb = j1939_skb_to_cb(skb);
 int req_pgn;

 if (skb->len < 3 || skcb->addr.pgn != J1939_PGN_REQUEST)
  return 0;

 req_pgn = skb->data[0] | (skb->data[1] << 8) | (skb->data[2] << 16);

 return req_pgn == J1939_PGN_ADDRESS_CLAIMED;
}

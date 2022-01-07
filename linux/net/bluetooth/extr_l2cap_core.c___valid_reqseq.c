
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct l2cap_chan {scalar_t__ expected_ack_seq; int next_tx_seq; } ;


 scalar_t__ __seq_offset (struct l2cap_chan*,int ,scalar_t__) ;

__attribute__((used)) static bool __valid_reqseq(struct l2cap_chan *chan, u16 reqseq)
{

 u16 unacked;

 unacked = __seq_offset(chan, chan->next_tx_seq, chan->expected_ack_seq);
 return __seq_offset(chan, chan->next_tx_seq, reqseq) <= unacked;
}

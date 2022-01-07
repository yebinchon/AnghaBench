
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ chan_type; int conf_state; } ;


 int CONF_CONNECT_PEND ;
 scalar_t__ L2CAP_CHAN_CONN_ORIENTED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int __l2cap_no_conn_pending(struct l2cap_chan *chan)
{
 if (chan->chan_type != L2CAP_CHAN_CONN_ORIENTED)
  return 1;

 return !test_bit(CONF_CONNECT_PEND, &chan->conf_state);
}

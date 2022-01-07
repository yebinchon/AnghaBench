
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ mode; int fcs; int conf_state; } ;


 int CONF_RECV_NO_FCS ;
 int L2CAP_FCS_CRC16 ;
 int L2CAP_FCS_NONE ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ L2CAP_MODE_STREAMING ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void set_default_fcs(struct l2cap_chan *chan)
{



 if (chan->mode != L2CAP_MODE_ERTM && chan->mode != L2CAP_MODE_STREAMING)
  chan->fcs = L2CAP_FCS_NONE;
 else if (!test_bit(CONF_RECV_NO_FCS, &chan->conf_state))
  chan->fcs = L2CAP_FCS_CRC16;
}

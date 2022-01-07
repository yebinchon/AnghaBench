
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {scalar_t__ mode; } ;


 int L2CAP_EV_LOCAL_BUSY_CLEAR ;
 int L2CAP_EV_LOCAL_BUSY_DETECTED ;
 scalar_t__ L2CAP_MODE_ERTM ;
 int l2cap_tx (struct l2cap_chan*,int *,int *,int ) ;

void l2cap_chan_busy(struct l2cap_chan *chan, int busy)
{
 u8 event;

 if (chan->mode != L2CAP_MODE_ERTM)
  return;

 event = busy ? L2CAP_EV_LOCAL_BUSY_DETECTED : L2CAP_EV_LOCAL_BUSY_CLEAR;
 l2cap_tx(chan, ((void*)0), ((void*)0), event);
}

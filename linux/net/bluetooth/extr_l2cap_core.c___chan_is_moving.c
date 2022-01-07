
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ move_state; } ;


 scalar_t__ L2CAP_MOVE_STABLE ;
 scalar_t__ L2CAP_MOVE_WAIT_PREPARE ;

__attribute__((used)) static bool __chan_is_moving(struct l2cap_chan *chan)
{
 return chan->move_state != L2CAP_MOVE_STABLE &&
        chan->move_state != L2CAP_MOVE_WAIT_PREPARE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_chan {int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* state_change ) (struct l2cap_chan*,int,int ) ;} ;


 int BT_DBG (char*,struct l2cap_chan*,int ,int ) ;
 int state_to_string (int) ;
 int stub1 (struct l2cap_chan*,int,int ) ;

__attribute__((used)) static void l2cap_state_change(struct l2cap_chan *chan, int state)
{
 BT_DBG("chan %p %s -> %s", chan, state_to_string(chan->state),
        state_to_string(state));

 chan->state = state;
 chan->ops->state_change(chan, state, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_chan {int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* state_change ) (struct l2cap_chan*,int ,int) ;} ;


 int stub1 (struct l2cap_chan*,int ,int) ;

__attribute__((used)) static inline void l2cap_chan_set_err(struct l2cap_chan *chan, int err)
{
 chan->ops->state_change(chan, chan->state, err);
}

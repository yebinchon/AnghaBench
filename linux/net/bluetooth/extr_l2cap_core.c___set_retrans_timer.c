
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ retrans_timeout; int retrans_timer; int monitor_timer; } ;


 int delayed_work_pending (int *) ;
 int l2cap_set_timer (struct l2cap_chan*,int *,int ) ;
 int msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void __set_retrans_timer(struct l2cap_chan *chan)
{
 if (!delayed_work_pending(&chan->monitor_timer) &&
     chan->retrans_timeout) {
  l2cap_set_timer(chan, &chan->retrans_timer,
    msecs_to_jiffies(chan->retrans_timeout));
 }
}

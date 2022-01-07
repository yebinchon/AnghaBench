
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ monitor_timeout; int monitor_timer; } ;


 int __clear_retrans_timer (struct l2cap_chan*) ;
 int l2cap_set_timer (struct l2cap_chan*,int *,int ) ;
 int msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void __set_monitor_timer(struct l2cap_chan *chan)
{
 __clear_retrans_timer(chan);
 if (chan->monitor_timeout) {
  l2cap_set_timer(chan, &chan->monitor_timer,
    msecs_to_jiffies(chan->monitor_timeout));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_timer_system_private {long correction; scalar_t__ last_jiffies; scalar_t__ last_expires; struct snd_timer* snd_timer; } ;
struct snd_timer {int dummy; } ;


 struct snd_timer_system_private* from_timer (int ,struct timer_list*,int ) ;
 unsigned long jiffies ;
 struct snd_timer_system_private* priv ;
 int snd_timer_interrupt (struct snd_timer*,long) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int tlist ;

__attribute__((used)) static void snd_timer_s_function(struct timer_list *t)
{
 struct snd_timer_system_private *priv = from_timer(priv, t,
        tlist);
 struct snd_timer *timer = priv->snd_timer;
 unsigned long jiff = jiffies;
 if (time_after(jiff, priv->last_expires))
  priv->correction += (long)jiff - (long)priv->last_expires;
 snd_timer_interrupt(timer, (long)jiff - (long)priv->last_jiffies);
}

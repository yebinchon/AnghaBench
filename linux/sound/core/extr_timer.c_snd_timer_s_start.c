
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_system_private {unsigned long last_jiffies; int correction; unsigned long last_expires; int tlist; } ;
struct snd_timer {int sticks; scalar_t__ private_data; } ;


 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;

__attribute__((used)) static int snd_timer_s_start(struct snd_timer * timer)
{
 struct snd_timer_system_private *priv;
 unsigned long njiff;

 priv = (struct snd_timer_system_private *) timer->private_data;
 njiff = (priv->last_jiffies = jiffies);
 if (priv->correction > timer->sticks - 1) {
  priv->correction -= timer->sticks - 1;
  njiff++;
 } else {
  njiff += timer->sticks - priv->correction;
  priv->correction = 0;
 }
 priv->last_expires = njiff;
 mod_timer(&priv->tlist, njiff);
 return 0;
}

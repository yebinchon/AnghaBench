
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_system_private {int tlist; } ;
struct snd_timer {scalar_t__ private_data; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static int snd_timer_s_close(struct snd_timer *timer)
{
 struct snd_timer_system_private *priv;

 priv = (struct snd_timer_system_private *)timer->private_data;
 del_timer_sync(&priv->tlist);
 return 0;
}

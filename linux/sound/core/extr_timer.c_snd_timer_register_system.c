
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_system_private {int tlist; struct snd_timer* snd_timer; } ;
struct snd_timer {int private_free; struct snd_timer_system_private* private_data; int hw; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_TIMER_GLOBAL_SYSTEM ;
 struct snd_timer_system_private* kzalloc (int,int ) ;
 int snd_timer_free (struct snd_timer*) ;
 int snd_timer_free_system ;
 int snd_timer_global_new (char*,int ,struct snd_timer**) ;
 int snd_timer_global_register (struct snd_timer*) ;
 int snd_timer_s_function ;
 int snd_timer_system ;
 int strcpy (int ,char*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int snd_timer_register_system(void)
{
 struct snd_timer *timer;
 struct snd_timer_system_private *priv;
 int err;

 err = snd_timer_global_new("system", SNDRV_TIMER_GLOBAL_SYSTEM, &timer);
 if (err < 0)
  return err;
 strcpy(timer->name, "system timer");
 timer->hw = snd_timer_system;
 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0)) {
  snd_timer_free(timer);
  return -ENOMEM;
 }
 priv->snd_timer = timer;
 timer_setup(&priv->tlist, snd_timer_s_function, 0);
 timer->private_data = priv;
 timer->private_free = snd_timer_free_system;
 return snd_timer_global_register(timer);
}

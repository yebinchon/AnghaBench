
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {struct snd_timer_instance* owner; struct snd_timer* timer; int slave_active_head; int slave_list_head; int ack_list; int active_list; int open_list; } ;
struct snd_timer {int module; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct snd_timer_instance*) ;
 struct snd_timer_instance* kstrdup (char*,int ) ;
 struct snd_timer_instance* kzalloc (int,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct snd_timer_instance *snd_timer_instance_new(char *owner,
        struct snd_timer *timer)
{
 struct snd_timer_instance *timeri;
 timeri = kzalloc(sizeof(*timeri), GFP_KERNEL);
 if (timeri == ((void*)0))
  return ((void*)0);
 timeri->owner = kstrdup(owner, GFP_KERNEL);
 if (! timeri->owner) {
  kfree(timeri);
  return ((void*)0);
 }
 INIT_LIST_HEAD(&timeri->open_list);
 INIT_LIST_HEAD(&timeri->active_list);
 INIT_LIST_HEAD(&timeri->ack_list);
 INIT_LIST_HEAD(&timeri->slave_list_head);
 INIT_LIST_HEAD(&timeri->slave_active_head);

 timeri->timer = timer;
 if (timer && !try_module_get(timer->module)) {
  kfree(timeri->owner);
  kfree(timeri);
  return ((void*)0);
 }

 return timeri;
}

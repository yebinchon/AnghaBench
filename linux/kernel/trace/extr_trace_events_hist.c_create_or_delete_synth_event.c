
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_event {int devent; scalar_t__ ref; } ;


 int EBUSY ;
 int ECANCELED ;
 int EINVAL ;
 int ENOENT ;
 int __create_synth_event (int,char const*,char const**) ;
 int dyn_event_remove (int *) ;
 int event_mutex ;
 struct synth_event* find_synth_event (char const*) ;
 int free_synth_event (struct synth_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_synth_event (struct synth_event*) ;

__attribute__((used)) static int create_or_delete_synth_event(int argc, char **argv)
{
 const char *name = argv[0];
 struct synth_event *event = ((void*)0);
 int ret;


 if (name[0] == '!') {
  mutex_lock(&event_mutex);
  event = find_synth_event(name + 1);
  if (event) {
   if (event->ref)
    ret = -EBUSY;
   else {
    ret = unregister_synth_event(event);
    if (!ret) {
     dyn_event_remove(&event->devent);
     free_synth_event(event);
    }
   }
  } else
   ret = -ENOENT;
  mutex_unlock(&event_mutex);
  return ret;
 }

 ret = __create_synth_event(argc - 1, name, (const char **)argv + 1);
 return ret == -ECANCELED ? -EINVAL : ret;
}

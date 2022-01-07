
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_event {int dummy; } ;
struct TYPE_2__ {int ext_fh; } ;
struct fanotify_event {int mask; int pid; TYPE_1__ fid; int path; } ;


 struct fanotify_event* FANOTIFY_E (struct fsnotify_event*) ;
 struct fanotify_event* FANOTIFY_PE (struct fsnotify_event*) ;
 int fanotify_event_cachep ;
 scalar_t__ fanotify_event_has_ext_fh (struct fanotify_event*) ;
 scalar_t__ fanotify_event_has_path (struct fanotify_event*) ;
 scalar_t__ fanotify_is_perm_event (int ) ;
 int fanotify_perm_event_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct fanotify_event*) ;
 int path_put (int *) ;
 int put_pid (int ) ;

__attribute__((used)) static void fanotify_free_event(struct fsnotify_event *fsn_event)
{
 struct fanotify_event *event;

 event = FANOTIFY_E(fsn_event);
 if (fanotify_event_has_path(event))
  path_put(&event->path);
 else if (fanotify_event_has_ext_fh(event))
  kfree(event->fid.ext_fh);
 put_pid(event->pid);
 if (fanotify_is_perm_event(event->mask)) {
  kmem_cache_free(fanotify_perm_event_cachep,
    FANOTIFY_PE(fsn_event));
  return;
 }
 kmem_cache_free(fanotify_event_cachep, event);
}

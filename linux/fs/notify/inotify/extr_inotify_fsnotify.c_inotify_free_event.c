
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_event {int dummy; } ;


 int INOTIFY_E (struct fsnotify_event*) ;
 int kfree (int ) ;

__attribute__((used)) static void inotify_free_event(struct fsnotify_event *fsn_event)
{
 kfree(INOTIFY_E(fsn_event));
}

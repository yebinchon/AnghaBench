
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handle {int dummy; } ;
struct fanotify_event_info_fid {int dummy; } ;
struct fanotify_event {scalar_t__ fh_len; } ;


 int FANOTIFY_EVENT_ALIGN ;
 int fanotify_event_has_fid (struct fanotify_event*) ;
 int roundup (scalar_t__,int ) ;

__attribute__((used)) static int fanotify_event_info_len(struct fanotify_event *event)
{
 if (!fanotify_event_has_fid(event))
  return 0;

 return roundup(sizeof(struct fanotify_event_info_fid) +
         sizeof(struct file_handle) + event->fh_len,
         FANOTIFY_EVENT_ALIGN);
}

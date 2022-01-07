
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fanotify_event {int fh_len; int fid; } ;


 void* fanotify_fid_fh (int *,int ) ;

__attribute__((used)) static inline void *fanotify_event_fh(struct fanotify_event *event)
{
 return fanotify_fid_fh(&event->fid, event->fh_len);
}

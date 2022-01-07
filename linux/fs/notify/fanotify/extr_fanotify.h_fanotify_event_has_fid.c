
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fanotify_event {scalar_t__ fh_type; } ;


 scalar_t__ FILEID_INVALID ;
 scalar_t__ FILEID_ROOT ;

__attribute__((used)) static inline bool fanotify_event_has_fid(struct fanotify_event *event)
{
 return event->fh_type != FILEID_ROOT &&
  event->fh_type != FILEID_INVALID;
}

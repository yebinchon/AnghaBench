
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_event_info {int mask; scalar_t__ name_len; int name; } ;
struct fsnotify_event {scalar_t__ inode; } ;


 int FS_IN_IGNORED ;
 struct inotify_event_info* INOTIFY_E (struct fsnotify_event*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool event_compare(struct fsnotify_event *old_fsn,
     struct fsnotify_event *new_fsn)
{
 struct inotify_event_info *old, *new;

 old = INOTIFY_E(old_fsn);
 new = INOTIFY_E(new_fsn);
 if (old->mask & FS_IN_IGNORED)
  return 0;
 if ((old->mask == new->mask) &&
     (old_fsn->inode == new_fsn->inode) &&
     (old->name_len == new->name_len) &&
     (!old->name_len || !strcmp(old->name, new->name)))
  return 1;
 return 0;
}

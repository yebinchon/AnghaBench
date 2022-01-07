
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int mask; int ignored_mask; int lock; int flags; } ;
typedef int __u32 ;


 unsigned int FAN_MARK_IGNORED_MASK ;
 unsigned int FAN_MARK_IGNORED_SURV_MODIFY ;
 int FSNOTIFY_MARK_FLAG_IGNORED_SURV_MODIFY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __u32 fanotify_mark_add_to_mask(struct fsnotify_mark *fsn_mark,
           __u32 mask,
           unsigned int flags)
{
 __u32 oldmask = -1;

 spin_lock(&fsn_mark->lock);
 if (!(flags & FAN_MARK_IGNORED_MASK)) {
  oldmask = fsn_mark->mask;
  fsn_mark->mask |= mask;
 } else {
  fsn_mark->ignored_mask |= mask;
  if (flags & FAN_MARK_IGNORED_SURV_MODIFY)
   fsn_mark->flags |= FSNOTIFY_MARK_FLAG_IGNORED_SURV_MODIFY;
 }
 spin_unlock(&fsn_mark->lock);

 return mask & ~oldmask;
}

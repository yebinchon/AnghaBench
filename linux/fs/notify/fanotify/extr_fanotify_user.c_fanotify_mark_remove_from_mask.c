
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int mask; int ignored_mask; int lock; } ;
typedef int __u32 ;


 unsigned int FAN_MARK_IGNORED_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __u32 fanotify_mark_remove_from_mask(struct fsnotify_mark *fsn_mark,
         __u32 mask,
         unsigned int flags,
         int *destroy)
{
 __u32 oldmask = 0;

 spin_lock(&fsn_mark->lock);
 if (!(flags & FAN_MARK_IGNORED_MASK)) {
  oldmask = fsn_mark->mask;
  fsn_mark->mask &= ~mask;
 } else {
  fsn_mark->ignored_mask &= ~mask;
 }
 *destroy = !(fsn_mark->mask | fsn_mark->ignored_mask);
 spin_unlock(&fsn_mark->lock);

 return mask & oldmask;
}

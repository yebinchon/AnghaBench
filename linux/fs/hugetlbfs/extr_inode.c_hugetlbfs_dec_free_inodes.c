
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlbfs_sb_info {scalar_t__ free_inodes; int stat_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int hugetlbfs_dec_free_inodes(struct hugetlbfs_sb_info *sbinfo)
{
 if (sbinfo->free_inodes >= 0) {
  spin_lock(&sbinfo->stat_lock);
  if (unlikely(!sbinfo->free_inodes)) {
   spin_unlock(&sbinfo->stat_lock);
   return 0;
  }
  sbinfo->free_inodes--;
  spin_unlock(&sbinfo->stat_lock);
 }

 return 1;
}

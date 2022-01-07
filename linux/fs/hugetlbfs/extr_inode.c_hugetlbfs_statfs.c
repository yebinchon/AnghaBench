
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstatfs {long f_blocks; long f_bavail; long f_bfree; int f_namelen; int f_ffree; int f_files; int f_bsize; int f_type; } ;
struct hugetlbfs_sb_info {int stat_lock; int free_inodes; int max_inodes; TYPE_1__* spool; } ;
struct hstate {int dummy; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {long max_hpages; long used_hpages; int lock; } ;


 int HUGETLBFS_MAGIC ;
 struct hugetlbfs_sb_info* HUGETLBFS_SB (int ) ;
 int NAME_MAX ;
 int d_inode (struct dentry*) ;
 struct hstate* hstate_inode (int ) ;
 int huge_page_size (struct hstate*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hugetlbfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct hugetlbfs_sb_info *sbinfo = HUGETLBFS_SB(dentry->d_sb);
 struct hstate *h = hstate_inode(d_inode(dentry));

 buf->f_type = HUGETLBFS_MAGIC;
 buf->f_bsize = huge_page_size(h);
 if (sbinfo) {
  spin_lock(&sbinfo->stat_lock);


  if (sbinfo->spool) {
   long free_pages;

   spin_lock(&sbinfo->spool->lock);
   buf->f_blocks = sbinfo->spool->max_hpages;
   free_pages = sbinfo->spool->max_hpages
    - sbinfo->spool->used_hpages;
   buf->f_bavail = buf->f_bfree = free_pages;
   spin_unlock(&sbinfo->spool->lock);
   buf->f_files = sbinfo->max_inodes;
   buf->f_ffree = sbinfo->free_inodes;
  }
  spin_unlock(&sbinfo->stat_lock);
 }
 buf->f_namelen = NAME_MAX;
 return 0;
}

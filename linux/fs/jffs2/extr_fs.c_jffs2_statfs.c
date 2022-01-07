
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** val; } ;
struct kstatfs {int f_bsize; int f_blocks; unsigned long f_bavail; unsigned long f_bfree; TYPE_1__ f_fsid; int f_namelen; scalar_t__ f_ffree; scalar_t__ f_files; void* f_type; } ;
struct jffs2_sb_info {int flash_size; unsigned long dirty_size; unsigned long free_size; unsigned long sector_size; unsigned long resv_blocks_write; int erase_completion_lock; TYPE_2__* mtd; } ;
struct dentry {int d_sb; } ;
struct TYPE_4__ {void* index; } ;


 int JFFS2_MAX_NAME_LEN ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 void* JFFS2_SUPER_MAGIC ;
 int PAGE_SHIFT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jffs2_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(dentry->d_sb);
 unsigned long avail;

 buf->f_type = JFFS2_SUPER_MAGIC;
 buf->f_bsize = 1 << PAGE_SHIFT;
 buf->f_blocks = c->flash_size >> PAGE_SHIFT;
 buf->f_files = 0;
 buf->f_ffree = 0;
 buf->f_namelen = JFFS2_MAX_NAME_LEN;
 buf->f_fsid.val[0] = JFFS2_SUPER_MAGIC;
 buf->f_fsid.val[1] = c->mtd->index;

 spin_lock(&c->erase_completion_lock);
 avail = c->dirty_size + c->free_size;
 if (avail > c->sector_size * c->resv_blocks_write)
  avail -= c->sector_size * c->resv_blocks_write;
 else
  avail = 0;
 spin_unlock(&c->erase_completion_lock);

 buf->f_bavail = buf->f_bfree = avail >> PAGE_SHIFT;

 return 0;
}

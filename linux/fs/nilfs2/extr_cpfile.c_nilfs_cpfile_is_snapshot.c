
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int mi_sem; } ;


 int ENOENT ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 scalar_t__ nilfs_checkpoint_invalid (struct nilfs_checkpoint*) ;
 int nilfs_checkpoint_snapshot (struct nilfs_checkpoint*) ;
 struct nilfs_checkpoint* nilfs_cpfile_block_get_checkpoint (struct inode*,scalar_t__,struct buffer_head*,void*) ;
 int nilfs_cpfile_get_checkpoint_block (struct inode*,scalar_t__,int ,struct buffer_head**) ;
 scalar_t__ nilfs_mdt_cno (struct inode*) ;
 int up_read (int *) ;

int nilfs_cpfile_is_snapshot(struct inode *cpfile, __u64 cno)
{
 struct buffer_head *bh;
 struct nilfs_checkpoint *cp;
 void *kaddr;
 int ret;





 if (cno == 0 || cno >= nilfs_mdt_cno(cpfile))
  return -ENOENT;
 down_read(&NILFS_MDT(cpfile)->mi_sem);

 ret = nilfs_cpfile_get_checkpoint_block(cpfile, cno, 0, &bh);
 if (ret < 0)
  goto out;
 kaddr = kmap_atomic(bh->b_page);
 cp = nilfs_cpfile_block_get_checkpoint(cpfile, cno, bh, kaddr);
 if (nilfs_checkpoint_invalid(cp))
  ret = -ENOENT;
 else
  ret = nilfs_checkpoint_snapshot(cp);
 kunmap_atomic(kaddr);
 brelse(bh);

 out:
 up_read(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}

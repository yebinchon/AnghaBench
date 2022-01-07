
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 int EAGAIN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 int down_write (int *) ;
 int down_write_trylock (int *) ;
 int ocfs2_inode_lock (struct inode*,int *,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_try_inode_lock (struct inode*,struct buffer_head**,int) ;

__attribute__((used)) static int ocfs2_inode_lock_for_extent_tree(struct inode *inode,
         struct buffer_head **di_bh,
         int meta_level,
         int overwrite_io,
         int write_sem,
         int wait)
{
 int ret = 0;

 if (wait)
  ret = ocfs2_inode_lock(inode, ((void*)0), meta_level);
 else
  ret = ocfs2_try_inode_lock(inode,
   overwrite_io ? ((void*)0) : di_bh, meta_level);
 if (ret < 0)
  goto out;

 if (wait) {
  if (write_sem)
   down_write(&OCFS2_I(inode)->ip_alloc_sem);
  else
   down_read(&OCFS2_I(inode)->ip_alloc_sem);
 } else {
  if (write_sem)
   ret = down_write_trylock(&OCFS2_I(inode)->ip_alloc_sem);
  else
   ret = down_read_trylock(&OCFS2_I(inode)->ip_alloc_sem);

  if (!ret) {
   ret = -EAGAIN;
   goto out_unlock;
  }
 }

 return ret;

out_unlock:
 brelse(*di_bh);
 ocfs2_inode_unlock(inode, meta_level);
out:
 return ret;
}

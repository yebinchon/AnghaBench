
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int s_maxbytes; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_ST_SHARED ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 scalar_t__ gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_iomap_ops ;
 int inode_lock_shared (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;
 scalar_t__ iomap_seek_hole (struct inode*,scalar_t__,int *) ;
 scalar_t__ vfs_setpos (struct file*,scalar_t__,int ) ;

loff_t gfs2_seek_hole(struct file *file, loff_t offset)
{
 struct inode *inode = file->f_mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 loff_t ret;

 inode_lock_shared(inode);
 ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, 0, &gh);
 if (!ret)
  ret = iomap_seek_hole(inode, offset, &gfs2_iomap_ops);
 gfs2_glock_dq_uninit(&gh);
 inode_unlock_shared(inode);

 if (ret < 0)
  return ret;
 return vfs_setpos(file, ret, inode->i_sb->s_maxbytes);
}

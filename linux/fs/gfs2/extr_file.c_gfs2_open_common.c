
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct gfs2_file {int f_fl_mutex; } ;
struct file {struct gfs2_file* private_data; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_SB (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int generic_file_open (struct inode*,struct file*) ;
 int gfs2_assert_warn (int ,int) ;
 struct gfs2_file* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int gfs2_open_common(struct inode *inode, struct file *file)
{
 struct gfs2_file *fp;
 int ret;

 if (S_ISREG(inode->i_mode)) {
  ret = generic_file_open(inode, file);
  if (ret)
   return ret;
 }

 fp = kzalloc(sizeof(struct gfs2_file), GFP_NOFS);
 if (!fp)
  return -ENOMEM;

 mutex_init(&fp->f_fl_mutex);

 gfs2_assert_warn(GFS2_SB(inode), !file->private_data);
 file->private_data = fp;
 return 0;
}

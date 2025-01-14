
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ i_sb; } ;
struct TYPE_3__ {scalar_t__ (* remap_file_range ) (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__,unsigned int) ;} ;


 scalar_t__ EOPNOTSUPP ;
 scalar_t__ EXDEV ;
 unsigned int REMAP_FILE_DEDUP ;
 int WARN_ON_ONCE (unsigned int) ;
 TYPE_2__* file_inode (struct file*) ;
 int fsnotify_access (struct file*) ;
 int fsnotify_modify (struct file*) ;
 scalar_t__ generic_file_rw_checks (struct file*,struct file*) ;
 scalar_t__ remap_verify_area (struct file*,scalar_t__,scalar_t__,int) ;
 scalar_t__ stub1 (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__,unsigned int) ;

loff_t do_clone_file_range(struct file *file_in, loff_t pos_in,
      struct file *file_out, loff_t pos_out,
      loff_t len, unsigned int remap_flags)
{
 loff_t ret;

 WARN_ON_ONCE(remap_flags & REMAP_FILE_DEDUP);






 if (file_inode(file_in)->i_sb != file_inode(file_out)->i_sb)
  return -EXDEV;

 ret = generic_file_rw_checks(file_in, file_out);
 if (ret < 0)
  return ret;

 if (!file_in->f_op->remap_file_range)
  return -EOPNOTSUPP;

 ret = remap_verify_area(file_in, pos_in, len, 0);
 if (ret)
  return ret;

 ret = remap_verify_area(file_out, pos_out, len, 1);
 if (ret)
  return ret;

 ret = file_in->f_op->remap_file_range(file_in, pos_in,
   file_out, pos_out, len, remap_flags);
 if (ret < 0)
  return ret;

 fsnotify_access(file_in);
 fsnotify_modify(file_out);
 return ret;
}

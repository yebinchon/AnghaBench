
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 int EINVAL ;
 struct gfs2_inode* GFS2_I (int ) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;





 int generic_file_llseek (struct file*,int ,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_seek_data (struct file*,int ) ;
 int gfs2_seek_hole (struct file*,int ) ;

__attribute__((used)) static loff_t gfs2_llseek(struct file *file, loff_t offset, int whence)
{
 struct gfs2_inode *ip = GFS2_I(file->f_mapping->host);
 struct gfs2_holder i_gh;
 loff_t error;

 switch (whence) {
 case 130:
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
        &i_gh);
  if (!error) {
   error = generic_file_llseek(file, offset, whence);
   gfs2_glock_dq_uninit(&i_gh);
  }
  break;

 case 131:
  error = gfs2_seek_data(file, offset);
  break;

 case 129:
  error = gfs2_seek_hole(file, offset);
  break;

 case 132:
 case 128:




  error = generic_file_llseek(file, offset, whence);
  break;
 default:
  error = -EINVAL;
 }

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;
struct gfs2_inode {int i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 scalar_t__ S_ISREG (int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_open_common (struct inode*,struct file*) ;

__attribute__((used)) static int gfs2_open(struct inode *inode, struct file *file)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder i_gh;
 int error;
 bool need_unlock = 0;

 if (S_ISREG(ip->i_inode.i_mode)) {
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
        &i_gh);
  if (error)
   return error;
  need_unlock = 1;
 }

 error = gfs2_open_common(inode, file);

 if (need_unlock)
  gfs2_glock_dq_uninit(&i_gh);

 return error;
}

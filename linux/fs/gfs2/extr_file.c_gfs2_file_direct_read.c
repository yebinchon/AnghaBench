
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int LM_ST_DEFERRED ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 scalar_t__ gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_iomap_ops ;
 scalar_t__ iomap_dio_rw (struct kiocb*,struct iov_iter*,int *,int *) ;
 size_t iov_iter_count (struct iov_iter*) ;

__attribute__((used)) static ssize_t gfs2_file_direct_read(struct kiocb *iocb, struct iov_iter *to)
{
 struct file *file = iocb->ki_filp;
 struct gfs2_inode *ip = GFS2_I(file->f_mapping->host);
 size_t count = iov_iter_count(to);
 struct gfs2_holder gh;
 ssize_t ret;

 if (!count)
  return 0;

 gfs2_holder_init(ip->i_gl, LM_ST_DEFERRED, 0, &gh);
 ret = gfs2_glock_nq(&gh);
 if (ret)
  goto out_uninit;

 ret = iomap_dio_rw(iocb, to, &gfs2_iomap_ops, ((void*)0));

 gfs2_glock_dq(&gh);
out_uninit:
 gfs2_holder_uninit(&gh);
 return ret;
}

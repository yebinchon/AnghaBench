
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int actor; } ;
struct ocfs2_empty_dir_priv {int seen_other; int seen_dot_dot; int seen_dot; TYPE_1__ ctx; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int ML_ERROR ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_dir_foreach (struct inode*,TYPE_1__*) ;
 scalar_t__ ocfs2_dir_indexed (struct inode*) ;
 int ocfs2_empty_dir_dx (struct inode*,struct ocfs2_empty_dir_priv*) ;
 int ocfs2_empty_dir_filldir ;

int ocfs2_empty_dir(struct inode *inode)
{
 int ret;
 struct ocfs2_empty_dir_priv priv = {
  .ctx.actor = ocfs2_empty_dir_filldir,
 };

 if (ocfs2_dir_indexed(inode)) {
  ret = ocfs2_empty_dir_dx(inode, &priv);
  if (ret)
   mlog_errno(ret);




 }

 ret = ocfs2_dir_foreach(inode, &priv.ctx);
 if (ret)
  mlog_errno(ret);

 if (!priv.seen_dot || !priv.seen_dot_dot) {
  mlog(ML_ERROR, "bad directory (dir #%llu) - no `.' or `..'\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);



  return 1;
 }

 return !priv.seen_other;
}

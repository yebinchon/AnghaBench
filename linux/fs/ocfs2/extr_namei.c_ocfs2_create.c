
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 TYPE_2__* OCFS2_I (struct inode*) ;
 int S_IFREG ;
 int mlog_errno (int) ;
 int ocfs2_mknod (struct inode*,struct dentry*,int,int ) ;
 int trace_ocfs2_create (struct inode*,struct dentry*,int ,int ,unsigned long long,int) ;

__attribute__((used)) static int ocfs2_create(struct inode *dir,
   struct dentry *dentry,
   umode_t mode,
   bool excl)
{
 int ret;

 trace_ocfs2_create(dir, dentry, dentry->d_name.len, dentry->d_name.name,
      (unsigned long long)OCFS2_I(dir)->ip_blkno, mode);
 ret = ocfs2_mknod(dir, dentry, mode | S_IFREG, 0);
 if (ret)
  mlog_errno(ret);

 return ret;
}

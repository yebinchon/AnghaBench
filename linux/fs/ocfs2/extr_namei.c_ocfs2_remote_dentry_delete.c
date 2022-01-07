
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int mlog_errno (int) ;
 int ocfs2_dentry_lock (struct dentry*,int) ;
 int ocfs2_dentry_unlock (struct dentry*,int) ;

__attribute__((used)) static int ocfs2_remote_dentry_delete(struct dentry *dentry)
{
 int ret;

 ret = ocfs2_dentry_lock(dentry, 1);
 if (ret)
  mlog_errno(ret);
 else
  ocfs2_dentry_unlock(dentry, 1);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kstatfs {scalar_t__ f_frsize; scalar_t__ f_bsize; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* statfs ) (struct dentry*,struct kstatfs*) ;} ;


 int ENOSYS ;
 int memset (struct kstatfs*,int ,int) ;
 int security_sb_statfs (struct dentry*) ;
 int stub1 (struct dentry*,struct kstatfs*) ;

__attribute__((used)) static int statfs_by_dentry(struct dentry *dentry, struct kstatfs *buf)
{
 int retval;

 if (!dentry->d_sb->s_op->statfs)
  return -ENOSYS;

 memset(buf, 0, sizeof(*buf));
 retval = security_sb_statfs(dentry);
 if (retval)
  return retval;
 retval = dentry->d_sb->s_op->statfs(dentry, buf);
 if (retval == 0 && buf->f_frsize == 0)
  buf->f_frsize = buf->f_bsize;
 return retval;
}

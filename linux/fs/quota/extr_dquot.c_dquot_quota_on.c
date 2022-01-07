
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct path {TYPE_1__* dentry; } ;
struct TYPE_3__ {struct super_block* d_sb; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int EXDEV ;
 int d_inode (TYPE_1__*) ;
 int security_quota_on (TYPE_1__*) ;
 int vfs_load_quota_inode (int ,int,int,int) ;

int dquot_quota_on(struct super_block *sb, int type, int format_id,
     const struct path *path)
{
 int error = security_quota_on(path->dentry);
 if (error)
  return error;

 if (path->dentry->d_sb != sb)
  error = -EXDEV;
 else
  error = vfs_load_quota_inode(d_inode(path->dentry), type,
          format_id, DQUOT_USAGE_ENABLED |
          DQUOT_LIMITS_ENABLED);
 return error;
}

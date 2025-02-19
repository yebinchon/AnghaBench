
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* generic_fh_to_dentry (struct super_block*,struct fid*,int,int,int ) ;
 int kernfs_fh_get_inode ;

__attribute__((used)) static struct dentry *kernfs_fh_to_dentry(struct super_block *sb, struct fid *fid,
  int fh_len, int fh_type)
{
 return generic_fh_to_dentry(sb, fid, fh_len, fh_type,
        kernfs_fh_get_inode);
}

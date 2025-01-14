
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct fuse_inode_handle {int nodeid; scalar_t__ generation; } ;
struct fid {scalar_t__* raw; } ;
struct dentry {int dummy; } ;


 struct dentry* fuse_get_dentry (struct super_block*,struct fuse_inode_handle*) ;

__attribute__((used)) static struct dentry *fuse_fh_to_dentry(struct super_block *sb,
  struct fid *fid, int fh_len, int fh_type)
{
 struct fuse_inode_handle handle;

 if ((fh_type != 0x81 && fh_type != 0x82) || fh_len < 3)
  return ((void*)0);

 handle.nodeid = (u64) fid->raw[0] << 32;
 handle.nodeid |= (u64) fid->raw[1];
 handle.generation = fid->raw[2];
 return fuse_get_dentry(sb, &handle);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct ocfs2_inode_handle {int ih_blkno; scalar_t__ ih_generation; } ;
struct fid {int * raw; } ;
struct dentry {int dummy; } ;


 scalar_t__ le32_to_cpu (int ) ;
 struct dentry* ocfs2_get_dentry (struct super_block*,struct ocfs2_inode_handle*) ;

__attribute__((used)) static struct dentry *ocfs2_fh_to_parent(struct super_block *sb,
  struct fid *fid, int fh_len, int fh_type)
{
 struct ocfs2_inode_handle parent;

 if (fh_type != 2 || fh_len < 6)
  return ((void*)0);

 parent.ih_blkno = (u64)le32_to_cpu(fid->raw[3]) << 32;
 parent.ih_blkno |= (u64)le32_to_cpu(fid->raw[4]);
 parent.ih_generation = le32_to_cpu(fid->raw[5]);
 return ocfs2_get_dentry(sb, &parent);
}

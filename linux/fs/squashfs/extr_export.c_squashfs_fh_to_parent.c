
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int parent_ino; } ;
struct fid {TYPE_1__ i32; } ;
struct dentry {int dummy; } ;


 int FILEID_INO32_GEN_PARENT ;
 struct dentry* squashfs_export_iget (struct super_block*,int ) ;

__attribute__((used)) static struct dentry *squashfs_fh_to_parent(struct super_block *sb,
  struct fid *fid, int fh_len, int fh_type)
{
 if (fh_type != FILEID_INO32_GEN_PARENT || fh_len < 4)
  return ((void*)0);

 return squashfs_export_iget(sb, fid->i32.parent_ino);
}

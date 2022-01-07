
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {int * raw; } ;
struct dentry {int dummy; } ;


 struct dentry* reiserfs_get_dentry (struct super_block*,int ,int ,int ) ;

struct dentry *reiserfs_fh_to_parent(struct super_block *sb, struct fid *fid,
  int fh_len, int fh_type)
{
 if (fh_type > fh_len)
  fh_type = fh_len;
 if (fh_type < 4)
  return ((void*)0);

 return reiserfs_get_dentry(sb,
  (fh_type >= 5) ? fid->raw[3] : fid->raw[2],
  (fh_type >= 5) ? fid->raw[4] : fid->raw[3],
  (fh_type == 6) ? fid->raw[5] : 0);
}

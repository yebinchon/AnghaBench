
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {int * raw; } ;
struct dentry {int dummy; } ;


 struct dentry* reiserfs_get_dentry (struct super_block*,int ,int ,int ) ;
 int reiserfs_warning (struct super_block*,char*,char*,int,int) ;

struct dentry *reiserfs_fh_to_dentry(struct super_block *sb, struct fid *fid,
  int fh_len, int fh_type)
{
 if (fh_type > fh_len) {
  if (fh_type != 6 || fh_len != 5)
   reiserfs_warning(sb, "reiserfs-13077",
    "nfsd/reiserfs, fhtype=%d, len=%d - odd",
    fh_type, fh_len);
  fh_type = fh_len;
 }
 if (fh_len < 2)
  return ((void*)0);

 return reiserfs_get_dentry(sb, fid->raw[0], fid->raw[1],
  (fh_type == 3 || fh_type >= 5) ? fid->raw[2] : 0);
}

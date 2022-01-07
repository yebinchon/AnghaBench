
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_fid {int gen; int ino; int cno; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 int FILEID_NILFS_WITHOUT_PARENT ;
 int FILEID_NILFS_WITH_PARENT ;
 int NILFS_FID_SIZE_NON_CONNECTABLE ;
 struct dentry* nilfs_get_dentry (struct super_block*,int ,int ,int ) ;

__attribute__((used)) static struct dentry *nilfs_fh_to_dentry(struct super_block *sb, struct fid *fh,
      int fh_len, int fh_type)
{
 struct nilfs_fid *fid = (struct nilfs_fid *)fh;

 if (fh_len < NILFS_FID_SIZE_NON_CONNECTABLE ||
     (fh_type != FILEID_NILFS_WITH_PARENT &&
      fh_type != FILEID_NILFS_WITHOUT_PARENT))
  return ((void*)0);

 return nilfs_get_dentry(sb, fid->cno, fid->ino, fid->gen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct udf_inode_info {int i_unique; int i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {int i_mtime; int i_ctime; TYPE_1__* i_sb; int * i_fop; int * i_op; } ;
struct TYPE_4__ {scalar_t__ impUse; void* extLocation; void* extLength; } ;
struct fileIdentDesc {int fileCharacteristics; TYPE_2__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;


 int FID_FILE_CHAR_DIRECTORY ;
 int FID_FILE_CHAR_PARENT ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (scalar_t__) ;
 int clear_nlink (struct inode*) ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_lelb (int ) ;
 int current_time (struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int set_nlink (struct inode*,int) ;
 struct fileIdentDesc* udf_add_entry (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ;
 int udf_dir_inode_operations ;
 int udf_dir_operations ;
 struct inode* udf_new_inode (struct inode*,int) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;

__attribute__((used)) static int udf_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct inode *inode;
 struct udf_fileident_bh fibh;
 struct fileIdentDesc cfi, *fi;
 int err;
 struct udf_inode_info *dinfo = UDF_I(dir);
 struct udf_inode_info *iinfo;

 inode = udf_new_inode(dir, S_IFDIR | mode);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 iinfo = UDF_I(inode);
 inode->i_op = &udf_dir_inode_operations;
 inode->i_fop = &udf_dir_operations;
 fi = udf_add_entry(inode, ((void*)0), &fibh, &cfi, &err);
 if (!fi) {
  inode_dec_link_count(inode);
  discard_new_inode(inode);
  goto out;
 }
 set_nlink(inode, 2);
 cfi.icb.extLength = cpu_to_le32(inode->i_sb->s_blocksize);
 cfi.icb.extLocation = cpu_to_lelb(dinfo->i_location);
 *(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
  cpu_to_le32(dinfo->i_unique & 0x00000000FFFFFFFFUL);
 cfi.fileCharacteristics =
   FID_FILE_CHAR_DIRECTORY | FID_FILE_CHAR_PARENT;
 udf_write_fi(inode, &cfi, fi, &fibh, ((void*)0), ((void*)0));
 brelse(fibh.sbh);
 mark_inode_dirty(inode);

 fi = udf_add_entry(dir, dentry, &fibh, &cfi, &err);
 if (!fi) {
  clear_nlink(inode);
  mark_inode_dirty(inode);
  discard_new_inode(inode);
  goto out;
 }
 cfi.icb.extLength = cpu_to_le32(inode->i_sb->s_blocksize);
 cfi.icb.extLocation = cpu_to_lelb(iinfo->i_location);
 *(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
  cpu_to_le32(iinfo->i_unique & 0x00000000FFFFFFFFUL);
 cfi.fileCharacteristics |= FID_FILE_CHAR_DIRECTORY;
 udf_write_fi(dir, &cfi, fi, &fibh, ((void*)0), ((void*)0));
 inc_nlink(dir);
 dir->i_ctime = dir->i_mtime = current_time(dir);
 mark_inode_dirty(dir);
 d_instantiate_new(dentry, inode);
 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);
 err = 0;

out:
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_inode_info {int i_unique; int i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {int i_mtime; int i_ctime; TYPE_1__* i_sb; } ;
struct TYPE_4__ {scalar_t__ impUse; int extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_2__ icb; } ;
struct dentry {int d_parent; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;


 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (scalar_t__) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_lelb (int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (int ) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct fileIdentDesc* udf_add_entry (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int udf_add_nondir(struct dentry *dentry, struct inode *inode)
{
 struct udf_inode_info *iinfo = UDF_I(inode);
 struct inode *dir = d_inode(dentry->d_parent);
 struct udf_fileident_bh fibh;
 struct fileIdentDesc cfi, *fi;
 int err;

 fi = udf_add_entry(dir, dentry, &fibh, &cfi, &err);
 if (unlikely(!fi)) {
  inode_dec_link_count(inode);
  discard_new_inode(inode);
  return err;
 }
 cfi.icb.extLength = cpu_to_le32(inode->i_sb->s_blocksize);
 cfi.icb.extLocation = cpu_to_lelb(iinfo->i_location);
 *(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
  cpu_to_le32(iinfo->i_unique & 0x00000000FFFFFFFFUL);
 udf_write_fi(dir, &cfi, fi, &fibh, ((void*)0), ((void*)0));
 dir->i_ctime = dir->i_mtime = current_time(dir);
 mark_inode_dirty(dir);
 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);
 d_instantiate_new(dentry, inode);

 return 0;
}

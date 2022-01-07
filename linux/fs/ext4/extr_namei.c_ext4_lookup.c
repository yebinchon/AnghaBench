
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct inode {struct inode* i_ino; int i_sb; int i_mode; TYPE_1__ d_name; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct dentry {struct dentry* i_ino; int i_sb; int i_mode; TYPE_1__ d_name; } ;
struct buffer_head {struct buffer_head* i_ino; int i_sb; int i_mode; TYPE_1__ d_name; } ;
typedef struct inode* __u32 ;


 int EFSCORRUPTED ;
 int ENAMETOOLONG ;
 int EPERM ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int EXT4_ERROR_INODE (struct inode*,char*,struct inode*) ;
 int EXT4_IGET_NORMAL ;
 scalar_t__ EXT4_NAME_LEN ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int brelse (struct inode*) ;
 struct inode* d_splice_alias (struct inode*,struct inode*) ;
 struct inode* ext4_iget (int ,struct inode*,int ) ;
 struct inode* ext4_lookup_entry (struct inode*,struct inode*,struct ext4_dir_entry_2**) ;
 int ext4_valid_inum (int ,struct inode*) ;
 int ext4_warning (int ,char*,struct inode*,struct inode*) ;
 int fscrypt_has_permitted_context (struct inode*,struct inode*) ;
 int iput (struct inode*) ;
 struct inode* le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *ext4_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 struct inode *inode;
 struct ext4_dir_entry_2 *de;
 struct buffer_head *bh;

 if (dentry->d_name.len > EXT4_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 bh = ext4_lookup_entry(dir, dentry, &de);
 if (IS_ERR(bh))
  return ERR_CAST(bh);
 inode = ((void*)0);
 if (bh) {
  __u32 ino = le32_to_cpu(de->inode);
  brelse(bh);
  if (!ext4_valid_inum(dir->i_sb, ino)) {
   EXT4_ERROR_INODE(dir, "bad inode number: %u", ino);
   return ERR_PTR(-EFSCORRUPTED);
  }
  if (unlikely(ino == dir->i_ino)) {
   EXT4_ERROR_INODE(dir, "'%pd' linked to parent dir",
      dentry);
   return ERR_PTR(-EFSCORRUPTED);
  }
  inode = ext4_iget(dir->i_sb, ino, EXT4_IGET_NORMAL);
  if (inode == ERR_PTR(-ESTALE)) {
   EXT4_ERROR_INODE(dir,
      "deleted inode referenced: %u",
      ino);
   return ERR_PTR(-EFSCORRUPTED);
  }
  if (!IS_ERR(inode) && IS_ENCRYPTED(dir) &&
      (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode)) &&
      !fscrypt_has_permitted_context(dir, inode)) {
   ext4_warning(inode->i_sb,
         "Inconsistent encryption contexts: %lu/%lu",
         dir->i_ino, inode->i_ino);
   iput(inode);
   return ERR_PTR(-EPERM);
  }
 }
 return d_splice_alias(inode, dentry);
}

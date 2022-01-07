
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct inode {scalar_t__ i_ino; scalar_t__ i_generation; int i_flags; int i_sb; } ;
struct TYPE_2__ {int i_flags; } ;


 int EINVAL ;
 int EIO ;
 int EXT4_EA_INODE_FL ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_IGET_NORMAL ;
 int EXT4_STATE_LUSTRE_EA_INODE ;
 scalar_t__ EXT4_XATTR_INODE_GET_PARENT (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_NOQUOTA ;
 int ext4_error (int ,char*,unsigned long,...) ;
 struct inode* ext4_iget (int ,unsigned long,int ) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_xattr_inode_get_hash (struct inode*) ;
 int ext4_xattr_inode_set_class (struct inode*) ;
 int ext4_xattr_inode_set_ref (struct inode*,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;

__attribute__((used)) static int ext4_xattr_inode_iget(struct inode *parent, unsigned long ea_ino,
     u32 ea_inode_hash, struct inode **ea_inode)
{
 struct inode *inode;
 int err;

 inode = ext4_iget(parent->i_sb, ea_ino, EXT4_IGET_NORMAL);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  ext4_error(parent->i_sb,
      "error while reading EA inode %lu err=%d", ea_ino,
      err);
  return err;
 }

 if (is_bad_inode(inode)) {
  ext4_error(parent->i_sb,
      "error while reading EA inode %lu is_bad_inode",
      ea_ino);
  err = -EIO;
  goto error;
 }

 if (!(EXT4_I(inode)->i_flags & EXT4_EA_INODE_FL)) {
  ext4_error(parent->i_sb,
      "EA inode %lu does not have EXT4_EA_INODE_FL flag",
       ea_ino);
  err = -EINVAL;
  goto error;
 }

 ext4_xattr_inode_set_class(inode);






 if (ea_inode_hash != ext4_xattr_inode_get_hash(inode) &&
     EXT4_XATTR_INODE_GET_PARENT(inode) == parent->i_ino &&
     inode->i_generation == parent->i_generation) {
  ext4_set_inode_state(inode, EXT4_STATE_LUSTRE_EA_INODE);
  ext4_xattr_inode_set_ref(inode, 1);
 } else {
  inode_lock(inode);
  inode->i_flags |= S_NOQUOTA;
  inode_unlock(inode);
 }

 *ea_inode = inode;
 return 0;
error:
 iput(inode);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int u32 ;
struct inode {int i_flags; int * i_fop; int * i_op; scalar_t__ i_ino; TYPE_2__* i_sb; } ;
typedef int handle_t ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {int d_inode; } ;


 struct inode* ERR_PTR (int) ;
 int EXT4_EA_INODE_FL ;
 int IS_ERR (struct inode*) ;
 int S_IFREG ;
 int S_NOQUOTA ;
 int dquot_drop (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int ext4_file_inode_operations ;
 int ext4_file_operations ;
 int ext4_inode_attach_jinode (struct inode*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 struct inode* ext4_new_inode (int *,int ,int,int *,scalar_t__,int *,int ) ;
 int ext4_set_aops (struct inode*) ;
 int ext4_xattr_inode_set_class (struct inode*) ;
 int ext4_xattr_inode_set_hash (struct inode*,int ) ;
 int ext4_xattr_inode_set_ref (struct inode*,int) ;
 int i_gid_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *ext4_xattr_inode_create(handle_t *handle,
          struct inode *inode, u32 hash)
{
 struct inode *ea_inode = ((void*)0);
 uid_t owner[2] = { i_uid_read(inode), i_gid_read(inode) };
 int err;





 ea_inode = ext4_new_inode(handle, inode->i_sb->s_root->d_inode,
      S_IFREG | 0600, ((void*)0), inode->i_ino + 1, owner,
      EXT4_EA_INODE_FL);
 if (!IS_ERR(ea_inode)) {
  ea_inode->i_op = &ext4_file_inode_operations;
  ea_inode->i_fop = &ext4_file_operations;
  ext4_set_aops(ea_inode);
  ext4_xattr_inode_set_class(ea_inode);
  unlock_new_inode(ea_inode);
  ext4_xattr_inode_set_ref(ea_inode, 1);
  ext4_xattr_inode_set_hash(ea_inode, hash);
  err = ext4_mark_inode_dirty(handle, ea_inode);
  if (!err)
   err = ext4_inode_attach_jinode(ea_inode);
  if (err) {
   iput(ea_inode);
   return ERR_PTR(err);
  }





  dquot_free_inode(ea_inode);
  dquot_drop(ea_inode);
  inode_lock(ea_inode);
  ea_inode->i_flags |= S_NOQUOTA;
  inode_unlock(ea_inode);
 }

 return ea_inode;
}

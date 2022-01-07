
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct orangefs_object_kref {int fs_id; int khandle; } ;
struct inode {int i_state; unsigned long i_ino; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int GOSSIP_INODE_DEBUG ;
 int I_NEW ;
 int ORANGEFS_GETATTR_NEW ;
 int gossip_debug (int ,char*,int *,int ,unsigned long,unsigned long) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct orangefs_object_kref*) ;
 int iget_failed (struct inode*) ;
 unsigned long orangefs_handle_hash (struct orangefs_object_kref*) ;
 int orangefs_init_iops (struct inode*) ;
 int orangefs_inode_getattr (struct inode*,int ) ;
 int orangefs_set_inode ;
 int orangefs_test_inode ;
 int unlock_new_inode (struct inode*) ;

struct inode *orangefs_iget(struct super_block *sb,
  struct orangefs_object_kref *ref)
{
 struct inode *inode = ((void*)0);
 unsigned long hash;
 int error;

 hash = orangefs_handle_hash(ref);
 inode = iget5_locked(sb,
   hash,
   orangefs_test_inode,
   orangefs_set_inode,
   ref);

 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (!(inode->i_state & I_NEW))
  return inode;

 error = orangefs_inode_getattr(inode, ORANGEFS_GETATTR_NEW);
 if (error) {
  iget_failed(inode);
  return ERR_PTR(error);
 }

 inode->i_ino = hash;
 orangefs_init_iops(inode);
 unlock_new_inode(inode);

 gossip_debug(GOSSIP_INODE_DEBUG,
       "iget handle %pU, fsid %d hash %ld i_ino %lu\n",
       &ref->khandle,
       ref->fs_id,
       hash,
       inode->i_ino);

 return inode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ k_dir_id; scalar_t__ k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;


 int IS_ERR (struct inode*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* reiserfs_iget (struct super_block*,struct cpu_key*) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_unlock (struct super_block*) ;

__attribute__((used)) static struct dentry *reiserfs_get_dentry(struct super_block *sb,
 u32 objectid, u32 dir_id, u32 generation)

{
 struct cpu_key key;
 struct inode *inode;

 key.on_disk_key.k_objectid = objectid;
 key.on_disk_key.k_dir_id = dir_id;
 reiserfs_write_lock(sb);
 inode = reiserfs_iget(sb, &key);
 if (inode && !IS_ERR(inode) && generation != 0 &&
     generation != inode->i_generation) {
  iput(inode);
  inode = ((void*)0);
 }
 reiserfs_write_unlock(sb);

 return d_obtain_alias(inode);
}

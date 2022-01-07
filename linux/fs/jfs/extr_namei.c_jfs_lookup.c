
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct inode {int i_sb; } ;
struct dentry {int i_sb; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef scalar_t__ ino_t ;


 int ENOENT ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_LOOKUP ;
 struct inode* d_splice_alias (struct inode*,struct inode*) ;
 int dtSearch (struct inode*,struct component_name*,scalar_t__*,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int get_UCSname (struct component_name*,struct inode*) ;
 int jfs_err (char*,int) ;
 struct inode* jfs_iget (int ,scalar_t__) ;
 int jfs_info (char*,struct inode*) ;

__attribute__((used)) static struct dentry *jfs_lookup(struct inode *dip, struct dentry *dentry, unsigned int flags)
{
 struct btstack btstack;
 ino_t inum;
 struct inode *ip;
 struct component_name key;
 int rc;

 jfs_info("jfs_lookup: name = %pd", dentry);

 if ((rc = get_UCSname(&key, dentry)))
  return ERR_PTR(rc);
 rc = dtSearch(dip, &key, &inum, &btstack, JFS_LOOKUP);
 free_UCSname(&key);
 if (rc == -ENOENT) {
  ip = ((void*)0);
 } else if (rc) {
  jfs_err("jfs_lookup: dtSearch returned %d", rc);
  ip = ERR_PTR(rc);
 } else {
  ip = jfs_iget(dip->i_sb, inum);
  if (IS_ERR(ip))
   jfs_err("jfs_lookup: iget failed on inum %d", (uint)inum);
 }

 return d_splice_alias(ip, dentry);
}

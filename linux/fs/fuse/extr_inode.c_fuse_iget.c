
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int i_state; int i_generation; int i_mode; int i_flags; } ;
struct fuse_inode {int lock; int nlookup; } ;
struct fuse_conn {int writeback_cache; } ;
struct fuse_attr {int mode; } ;


 int I_NEW ;
 int S_IFMT ;
 int S_ISREG (int) ;
 int S_NOATIME ;
 int S_NOCMTIME ;
 int fuse_change_attributes (struct inode*,struct fuse_attr*,int ,int ) ;
 int fuse_init_inode (struct inode*,struct fuse_attr*) ;
 int fuse_inode_eq ;
 int fuse_inode_set ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,int *) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_new_inode (struct inode*) ;

struct inode *fuse_iget(struct super_block *sb, u64 nodeid,
   int generation, struct fuse_attr *attr,
   u64 attr_valid, u64 attr_version)
{
 struct inode *inode;
 struct fuse_inode *fi;
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 retry:
 inode = iget5_locked(sb, nodeid, fuse_inode_eq, fuse_inode_set, &nodeid);
 if (!inode)
  return ((void*)0);

 if ((inode->i_state & I_NEW)) {
  inode->i_flags |= S_NOATIME;
  if (!fc->writeback_cache || !S_ISREG(attr->mode))
   inode->i_flags |= S_NOCMTIME;
  inode->i_generation = generation;
  fuse_init_inode(inode, attr);
  unlock_new_inode(inode);
 } else if ((inode->i_mode ^ attr->mode) & S_IFMT) {

  make_bad_inode(inode);
  iput(inode);
  goto retry;
 }

 fi = get_fuse_inode(inode);
 spin_lock(&fi->lock);
 fi->nlookup++;
 spin_unlock(&fi->lock);
 fuse_change_attributes(inode, attr, attr_valid, attr_version);

 return inode;
}

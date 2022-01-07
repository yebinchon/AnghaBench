
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_self; } ;
struct omfs_inode {TYPE_1__ i_head; } ;
struct inode {int i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {scalar_t__ b_data; TYPE_2__ d_name; } ;
struct buffer_head {scalar_t__ b_data; TYPE_2__ d_name; } ;
typedef int ino_t ;


 int ENAMETOOLONG ;
 int ENOENT ;
 struct inode* ERR_CAST (struct dentry*) ;
 struct dentry* ERR_PTR (int ) ;
 int IS_ERR (struct dentry*) ;
 scalar_t__ OMFS_NAMELEN ;
 int be64_to_cpu (int ) ;
 int brelse (struct dentry*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct dentry* omfs_find_entry (struct inode*,int ,scalar_t__) ;
 struct inode* omfs_iget (int ,int ) ;

__attribute__((used)) static struct dentry *omfs_lookup(struct inode *dir, struct dentry *dentry,
      unsigned int flags)
{
 struct buffer_head *bh;
 struct inode *inode = ((void*)0);

 if (dentry->d_name.len > OMFS_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);

 bh = omfs_find_entry(dir, dentry->d_name.name, dentry->d_name.len);
 if (!IS_ERR(bh)) {
  struct omfs_inode *oi = (struct omfs_inode *)bh->b_data;
  ino_t ino = be64_to_cpu(oi->i_head.h_self);
  brelse(bh);
  inode = omfs_iget(dir->i_sb, ino);
 } else if (bh != ERR_PTR(-ENOENT)) {
  inode = ERR_CAST(bh);
 }
 return d_splice_alias(inode, dentry);
}

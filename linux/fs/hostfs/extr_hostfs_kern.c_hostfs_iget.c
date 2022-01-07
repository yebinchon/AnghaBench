
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *hostfs_iget(struct super_block *sb)
{
 struct inode *inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 return inode;
}

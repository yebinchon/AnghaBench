
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct inode*) ;
 struct inode* inode_insert5 (struct inode*,unsigned long,int ,int ,struct inode*) ;
 int ovl_inode_set ;
 int ovl_inode_test ;

__attribute__((used)) static struct inode *ovl_iget5(struct super_block *sb, struct inode *newinode,
          struct inode *key)
{
 return newinode ? inode_insert5(newinode, (unsigned long) key,
      ovl_inode_test, ovl_inode_set, key) :
     iget5_locked(sb, (unsigned long) key,
           ovl_inode_test, ovl_inode_set, key);
}

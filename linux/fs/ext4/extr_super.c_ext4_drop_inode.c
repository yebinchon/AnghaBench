
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fscrypt_drop_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;
 int trace_ext4_drop_inode (struct inode*,int) ;

__attribute__((used)) static int ext4_drop_inode(struct inode *inode)
{
 int drop = generic_drop_inode(inode);

 if (!drop)
  drop = fscrypt_drop_inode(inode);

 trace_ext4_drop_inode(inode, drop);
 return drop;
}

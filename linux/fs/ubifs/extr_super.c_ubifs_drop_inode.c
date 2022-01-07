
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fscrypt_drop_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;

__attribute__((used)) static int ubifs_drop_inode(struct inode *inode)
{
 int drop = generic_drop_inode(inode);

 if (!drop)
  drop = fscrypt_drop_inode(inode);

 return drop;
}

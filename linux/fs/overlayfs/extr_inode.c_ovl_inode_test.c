
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {void* i_private; } ;



__attribute__((used)) static int ovl_inode_test(struct inode *inode, void *data)
{
 return inode->i_private == data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_verity_info; } ;


 int fsverity_free_info (int *) ;

void fsverity_cleanup_inode(struct inode *inode)
{
 fsverity_free_info(inode->i_verity_info);
 inode->i_verity_info = ((void*)0);
}

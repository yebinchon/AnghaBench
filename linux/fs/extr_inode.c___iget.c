
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_count; } ;


 int atomic_inc (int *) ;

void __iget(struct inode *inode)
{
 atomic_inc(&inode->i_count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int truncate (struct inode*) ;

void V2_minix_truncate(struct inode * inode)
{
 truncate(inode);
}

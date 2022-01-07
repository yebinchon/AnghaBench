
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 void* __PDE_DATA (struct inode const*) ;

void *PDE_DATA(const struct inode *inode)
{
 return __PDE_DATA(inode);
}

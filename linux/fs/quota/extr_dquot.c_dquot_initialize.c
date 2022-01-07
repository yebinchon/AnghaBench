
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __dquot_initialize (struct inode*,int) ;

int dquot_initialize(struct inode *inode)
{
 return __dquot_initialize(inode, -1);
}

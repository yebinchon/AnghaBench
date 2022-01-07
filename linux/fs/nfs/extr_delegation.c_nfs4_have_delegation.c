
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int fmode_t ;


 int nfs4_do_check_delegation (struct inode*,int ,int) ;

int nfs4_have_delegation(struct inode *inode, fmode_t flags)
{
 return nfs4_do_check_delegation(inode, flags, 1);
}

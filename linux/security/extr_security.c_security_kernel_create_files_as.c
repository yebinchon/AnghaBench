
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct cred*,struct inode*) ;
 int kernel_create_files_as ;

int security_kernel_create_files_as(struct cred *new, struct inode *inode)
{
 return call_int_hook(kernel_create_files_as, 0, new, inode);
}

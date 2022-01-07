
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 int aa_sfs_profiles_op ;
 int policy_view_capable (int *) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int profiles_open(struct inode *inode, struct file *file)
{
 if (!policy_view_capable(((void*)0)))
  return -EACCES;

 return seq_open(file, &aa_sfs_profiles_op);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int EINVAL ;


 int nilfs_cpfile_do_get_cpinfo (struct inode*,int *,void*,unsigned int,size_t) ;
 int nilfs_cpfile_do_get_ssinfo (struct inode*,int *,void*,unsigned int,size_t) ;

ssize_t nilfs_cpfile_get_cpinfo(struct inode *cpfile, __u64 *cnop, int mode,
    void *buf, unsigned int cisz, size_t nci)
{
 switch (mode) {
 case 129:
  return nilfs_cpfile_do_get_cpinfo(cpfile, cnop, buf, cisz, nci);
 case 128:
  return nilfs_cpfile_do_get_ssinfo(cpfile, cnop, buf, cisz, nci);
 default:
  return -EINVAL;
 }
}

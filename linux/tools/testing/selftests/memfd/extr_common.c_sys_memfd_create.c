
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MFD_HUGETLB ;
 int __NR_memfd_create ;
 scalar_t__ hugetlbfs_test ;
 int syscall (int ,char const*,unsigned int) ;

int sys_memfd_create(const char *name, unsigned int flags)
{
 if (hugetlbfs_test)
  flags |= MFD_HUGETLB;

 return syscall(__NR_memfd_create, name, flags);
}

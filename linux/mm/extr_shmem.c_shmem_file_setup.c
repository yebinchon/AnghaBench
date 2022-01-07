
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 struct file* __shmem_file_setup (int ,char const*,int ,unsigned long,int ) ;
 int shm_mnt ;

struct file *shmem_file_setup(const char *name, loff_t size, unsigned long flags)
{
 return __shmem_file_setup(shm_mnt, name, size, flags, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct file* __shmem_file_setup (struct vfsmount*,char const*,int ,unsigned long,int ) ;

struct file *shmem_file_setup_with_mnt(struct vfsmount *mnt, const char *name,
           loff_t size, unsigned long flags)
{
 return __shmem_file_setup(mnt, name, size, flags, 0);
}

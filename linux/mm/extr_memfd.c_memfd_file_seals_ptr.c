
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_4__ {unsigned int seals; } ;
struct TYPE_3__ {unsigned int seals; } ;


 TYPE_2__* HUGETLBFS_I (int ) ;
 TYPE_1__* SHMEM_I (int ) ;
 int file_inode (struct file*) ;
 scalar_t__ is_file_hugepages (struct file*) ;
 scalar_t__ shmem_file (struct file*) ;

__attribute__((used)) static unsigned int *memfd_file_seals_ptr(struct file *file)
{
 if (shmem_file(file))
  return &SHMEM_I(file_inode(file))->seals;






 return ((void*)0);
}

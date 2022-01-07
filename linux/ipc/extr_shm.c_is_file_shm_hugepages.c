
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int shm_file_operations_huge ;

bool is_file_shm_hugepages(struct file *file)
{
 return file->f_op == &shm_file_operations_huge;
}

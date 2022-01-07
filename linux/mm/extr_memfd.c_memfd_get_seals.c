
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;
 unsigned int* memfd_file_seals_ptr (struct file*) ;

__attribute__((used)) static int memfd_get_seals(struct file *file)
{
 unsigned int *seals = memfd_file_seals_ptr(file);

 return seals ? *seals : -EINVAL;
}

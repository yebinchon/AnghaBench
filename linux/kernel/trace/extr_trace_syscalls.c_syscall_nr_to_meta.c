
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_metadata {int dummy; } ;


 int NR_syscalls ;
 struct syscall_metadata** syscalls_metadata ;

__attribute__((used)) static struct syscall_metadata *syscall_nr_to_meta(int nr)
{
 if (!syscalls_metadata || nr >= NR_syscalls || nr < 0)
  return ((void*)0);

 return syscalls_metadata[nr];
}

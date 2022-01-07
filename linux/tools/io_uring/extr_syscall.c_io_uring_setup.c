
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_params {int dummy; } ;


 int __NR_io_uring_setup ;
 int syscall (int ,unsigned int,struct io_uring_params*) ;

int io_uring_setup(unsigned int entries, struct io_uring_params *p)
{
 return syscall(__NR_io_uring_setup, entries, p);
}

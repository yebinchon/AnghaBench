
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_io_uring_register ;
 int syscall (int ,int,unsigned int,void*,unsigned int) ;

int io_uring_register(int fd, unsigned int opcode, void *arg,
        unsigned int nr_args)
{
 return syscall(__NR_io_uring_register, fd, opcode, arg, nr_args);
}

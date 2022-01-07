
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int output_fd ;
 int write (int ,unsigned long long*,int) ;

__attribute__((used)) static int record_proc_kallsyms(void)
{
 unsigned long long size = 0;






 return write(output_fd, &size, 4) != 4 ? -EIO : 0;
}

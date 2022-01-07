
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMENT (char*) ;
 int SYSNR (int ) ;
 int __NR_mmap ;
 int __NR_mmap2 ;
 int __NR_read ;
 int __NR_write ;

void syscall_defines(void)
{
 COMMENT("Linux system call numbers.");
 SYSNR(__NR_write);
 SYSNR(__NR_read);







}

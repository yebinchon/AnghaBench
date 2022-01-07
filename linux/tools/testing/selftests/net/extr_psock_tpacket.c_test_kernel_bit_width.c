
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int in ;


 int O_RDONLY ;
 int close (int) ;
 int exit (int) ;
 int isspace (char) ;
 int open (char*,int ) ;
 int perror (char*) ;
 scalar_t__ read (int,char*,int) ;

__attribute__((used)) static int test_kernel_bit_width(void)
{
 char in[512], *ptr;
 int num = 0, fd;
 ssize_t ret;

 fd = open("/proc/kallsyms", O_RDONLY);
 if (fd == -1) {
  perror("open");
  exit(1);
 }

 ret = read(fd, in, sizeof(in));
 if (ret <= 0) {
  perror("read");
  exit(1);
 }

 close(fd);

 ptr = in;
 while(!isspace(*ptr)) {
  num++;
  ptr++;
 }

 return num * 4;
}

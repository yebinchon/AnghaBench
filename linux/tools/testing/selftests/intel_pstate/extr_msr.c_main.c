
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msr ;


 int O_RDONLY ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 int perror (char*) ;
 int pread (int,long long*,int,int) ;
 int printf (char*,long long) ;
 int sprintf (char*,char*,int) ;
 int strtol (char*,char**,int) ;

int main(int argc, char **argv) {
 int cpu, fd;
 long long msr;
 char msr_file_name[64];

 if (argc != 2)
  return 1;

 errno = 0;
 cpu = strtol(argv[1], (char **) ((void*)0), 10);

 if (errno)
  return 1;

 sprintf(msr_file_name, "/dev/cpu/%d/msr", cpu);
 fd = open(msr_file_name, O_RDONLY);

 if (fd == -1) {
  perror("Failed to open");
  return 1;
 }

 pread(fd, &msr, sizeof(msr), 0x199);

 printf("msr 0x199: 0x%llx\n", msr);
 return 0;
}

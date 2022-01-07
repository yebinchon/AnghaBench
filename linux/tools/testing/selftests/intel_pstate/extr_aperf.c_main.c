
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeb {int time; int millitm; } ;
typedef int old_tsc ;
typedef int old_mperf ;
typedef int old_aperf ;
typedef int new_tsc ;
typedef int new_mperf ;
typedef int new_aperf ;
typedef int cpu_set_t ;


 int CPU_SET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int KSFT_SKIP ;
 int O_RDONLY ;
 scalar_t__ errno ;
 int ftime (struct timeb*) ;
 unsigned int open (char*,int ) ;
 int perror (char*) ;
 int pread (unsigned int,long long*,int,int) ;
 int printf (char*,long long,...) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int sprintf (char*,char*,unsigned int) ;
 int sqrt (unsigned int) ;
 char* strerror (scalar_t__) ;
 unsigned int strtol (char*,char**,int) ;
 int usage (char*) ;

int main(int argc, char **argv) {
 unsigned int i, cpu, fd;
 char msr_file_name[64];
 long long tsc, old_tsc, new_tsc;
 long long aperf, old_aperf, new_aperf;
 long long mperf, old_mperf, new_mperf;
 struct timeb before, after;
 long long int start, finish, total;
 cpu_set_t cpuset;

 if (argc != 2) {
  usage(argv[0]);
  return 1;
 }

 errno = 0;
 cpu = strtol(argv[1], (char **) ((void*)0), 10);

 if (errno) {
  usage(argv[0]);
  return 1;
 }

 sprintf(msr_file_name, "/dev/cpu/%d/msr", cpu);
 fd = open(msr_file_name, O_RDONLY);

 if (fd == -1) {
  printf("/dev/cpu/%d/msr: %s\n", cpu, strerror(errno));
  return KSFT_SKIP;
 }

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 if (sched_setaffinity(0, sizeof(cpu_set_t), &cpuset)) {
  perror("Failed to set cpu affinity");
  return 1;
 }

 ftime(&before);
 pread(fd, &old_tsc, sizeof(old_tsc), 0x10);
 pread(fd, &old_aperf, sizeof(old_mperf), 0xe7);
 pread(fd, &old_mperf, sizeof(old_aperf), 0xe8);

 for (i=0; i<0x8fffffff; i++) {
  sqrt(i);
 }

 ftime(&after);
 pread(fd, &new_tsc, sizeof(new_tsc), 0x10);
 pread(fd, &new_aperf, sizeof(new_mperf), 0xe7);
 pread(fd, &new_mperf, sizeof(new_aperf), 0xe8);

 tsc = new_tsc-old_tsc;
 aperf = new_aperf-old_aperf;
 mperf = new_mperf-old_mperf;

 start = before.time*1000 + before.millitm;
 finish = after.time*1000 + after.millitm;
 total = finish - start;

 printf("runTime: %4.2f\n", 1.0*total/1000);
 printf("freq: %7.0f\n", tsc / (1.0*aperf / (1.0 * mperf)) / total);
 return 0;
}

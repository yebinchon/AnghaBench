
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUFREQ_HIGHEST_FREQ ;
 int CPUFREQ_LOWEST_FREQ ;
 int CPUFREQ_MAX_SYSFS_PATH ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int open (int ,int ) ;
 int printf (char*,int) ;
 int strlen (int ) ;
 int write (int,int ,int ) ;

__attribute__((used)) static int cpu_stat_inject_cpu_frequency_event(void)
{
 int len, fd;

 fd = open(CPUFREQ_MAX_SYSFS_PATH, O_WRONLY);
 if (fd < 0) {
  printf("failed to open scaling_max_freq, errno=%d\n", errno);
  return fd;
 }

 len = write(fd, CPUFREQ_LOWEST_FREQ, strlen(CPUFREQ_LOWEST_FREQ));
 if (len < 0) {
  printf("failed to open scaling_max_freq, errno=%d\n", errno);
  goto err;
 }

 len = write(fd, CPUFREQ_HIGHEST_FREQ, strlen(CPUFREQ_HIGHEST_FREQ));
 if (len < 0) {
  printf("failed to open scaling_max_freq, errno=%d\n", errno);
  goto err;
 }

err:
 close(fd);
 return len;
}

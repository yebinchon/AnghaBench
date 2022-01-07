
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int O_WRONLY ;
 int close (int) ;
 int err (int,char*,char*) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void set_cpu_online_offline(int cpu, int state)
{
 char buffer[128];
 int fd;

 snprintf(buffer, sizeof(buffer),
   "/sys/devices/system/cpu/cpu%d/online", cpu);

 fd = open(buffer, O_WRONLY);
 if (fd < 0)
  err(-1, "%s open failed", buffer);

 if (state)
  write(fd, "1\n", 2);
 else
  write(fd, "0\n", 2);

 close(fd);
}

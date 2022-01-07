
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_WRONLY ;
 int PATH_MAX ;
 int close (int) ;
 int dprintf (int,char*,int) ;
 int open (char*,int) ;
 int sprintf (char*,char*,int) ;

int set_oom_adj_score(int pid, int score)
{
 char path[PATH_MAX];
 int fd, len;

 sprintf(path, "/proc/%d/oom_score_adj", pid);

 fd = open(path, O_WRONLY | O_APPEND);
 if (fd < 0)
  return fd;

 len = dprintf(fd, "%d", score);
 if (len < 0) {
  close(fd);
  return len;
 }

 close(fd);
 return 0;
}

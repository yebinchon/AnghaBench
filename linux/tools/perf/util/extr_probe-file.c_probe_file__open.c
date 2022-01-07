
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_FL_RW ;
 int PF_FL_UPROBE ;
 int open_kprobe_events (int) ;
 int open_uprobe_events (int) ;
 int print_open_warning (int,int) ;

int probe_file__open(int flag)
{
 int fd;

 if (flag & PF_FL_UPROBE)
  fd = open_uprobe_events(flag & PF_FL_RW);
 else
  fd = open_kprobe_events(flag & PF_FL_RW);
 if (fd < 0)
  print_open_warning(fd, flag & PF_FL_UPROBE);

 return fd;
}

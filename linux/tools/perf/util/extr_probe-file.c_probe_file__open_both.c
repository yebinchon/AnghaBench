
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PF_FL_RW ;
 int open_kprobe_events (int) ;
 int open_uprobe_events (int) ;
 int print_both_open_warning (int,int) ;

int probe_file__open_both(int *kfd, int *ufd, int flag)
{
 if (!kfd || !ufd)
  return -EINVAL;

 *kfd = open_kprobe_events(flag & PF_FL_RW);
 *ufd = open_uprobe_events(flag & PF_FL_RW);
 if (*kfd < 0 && *ufd < 0) {
  print_both_open_warning(*kfd, *ufd);
  return *kfd;
 }

 return 0;
}

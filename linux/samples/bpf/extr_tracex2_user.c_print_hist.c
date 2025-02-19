
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {char* comm; scalar_t__ uid_gid; scalar_t__ pid_tgid; } ;
struct hist_key {int dummy; } ;
typedef int __u32 ;


 int SIZE ;
 scalar_t__ bpf_map_get_next_key (int,struct hist_key*,struct hist_key*) ;
 scalar_t__ memcmp (struct task*,struct hist_key*,int ) ;
 int memcpy (struct task*,struct hist_key*,int ) ;
 int print_hist_for_pid (int,struct task*) ;
 int printf (char*,int,char*,int) ;

__attribute__((used)) static void print_hist(int fd)
{
 struct hist_key key = {}, next_key;
 static struct task tasks[1024];
 int task_cnt = 0;
 int i;

 while (bpf_map_get_next_key(fd, &key, &next_key) == 0) {
  int found = 0;

  for (i = 0; i < task_cnt; i++)
   if (memcmp(&tasks[i], &next_key, SIZE) == 0)
    found = 1;
  if (!found)
   memcpy(&tasks[task_cnt++], &next_key, SIZE);
  key = next_key;
 }

 for (i = 0; i < task_cnt; i++) {
  printf("\npid %d cmd %s uid %d\n",
         (__u32) tasks[i].pid_tgid,
         tasks[i].comm,
         (__u32) tasks[i].uid_gid);
  print_hist_for_pid(fd, &tasks[i]);
 }

}

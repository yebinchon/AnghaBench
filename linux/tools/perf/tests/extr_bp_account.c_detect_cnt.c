
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int __event (int,void*,struct perf_event_attr*) ;
 int close (int) ;
 int pr_debug (char*) ;
 scalar_t__ test_function ;
 int the_var ;

__attribute__((used)) static int detect_cnt(bool is_x)
{
 struct perf_event_attr attr;
 void *addr = is_x ? (void *)test_function : (void *)&the_var;
 int fd[100], cnt = 0, i;

 while (1) {
  if (cnt == 100) {
   pr_debug("way too many debug registers, fix the test\n");
   return 0;
  }
  fd[cnt] = __event(is_x, addr, &attr);

  if (fd[cnt] < 0)
   break;
  cnt++;
 }

 for (i = 0; i < cnt; i++)
  close(fd[i]);

 return cnt;
}

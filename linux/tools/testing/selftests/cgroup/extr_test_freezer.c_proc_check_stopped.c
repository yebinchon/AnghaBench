
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 int debug (char*,int,...) ;
 int proc_read_text (int,char*,char*,int) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static int proc_check_stopped(int pid)
{
 char buf[PAGE_SIZE];
 int len;

 len = proc_read_text(pid, "stat", buf, sizeof(buf));
 if (len == -1) {
  debug("Can't get %d stat\n", pid);
  return -1;
 }

 if (strstr(buf, "(test_freezer) T ") == ((void*)0)) {
  debug("Process %d in the unexpected state: %s\n", pid, buf);
  return -1;
 }

 return 0;
}

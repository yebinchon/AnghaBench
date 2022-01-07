
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ tid; scalar_t__ pid_; } ;
typedef int str ;
typedef scalar_t__ pid_t ;


 int comm_width ;
 int scnprintf (char*,int,char*,char const*,...) ;
 char* thread__comm_str (struct thread*) ;

__attribute__((used)) static char *timehist_get_commstr(struct thread *thread)
{
 static char str[32];
 const char *comm = thread__comm_str(thread);
 pid_t tid = thread->tid;
 pid_t pid = thread->pid_;
 int n;

 if (pid == 0)
  n = scnprintf(str, sizeof(str), "%s", comm);

 else if (tid != pid)
  n = scnprintf(str, sizeof(str), "%s[%d/%d]", comm, tid, pid);

 else
  n = scnprintf(str, sizeof(str), "%s[%d]", comm, tid);

 if (n > comm_width)
  comm_width = n;

 return str;
}

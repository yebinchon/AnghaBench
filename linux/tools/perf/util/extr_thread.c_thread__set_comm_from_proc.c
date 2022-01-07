
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int pid_; int tid; } ;
typedef int path ;


 scalar_t__ procfs__read_str (char*,char**,size_t*) ;
 int snprintf (char*,int,char*,int,int) ;
 int thread__set_comm (struct thread*,char*,int ) ;

int thread__set_comm_from_proc(struct thread *thread)
{
 char path[64];
 char *comm = ((void*)0);
 size_t sz;
 int err = -1;

 if (!(snprintf(path, sizeof(path), "%d/task/%d/comm",
         thread->pid_, thread->tid) >= (int)sizeof(path)) &&
     procfs__read_str(path, &comm, &sz) == 0) {
  comm[sz - 1] = '\0';
  err = thread__set_comm(thread, comm, 0);
 }

 return err;
}

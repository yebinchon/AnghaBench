
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int lock; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* __machine__findnew_thread (struct machine*,int ,int ) ;
 int down_write (int *) ;
 struct threads* machine__threads (struct machine*,int ) ;
 int up_write (int *) ;

struct thread *machine__findnew_thread(struct machine *machine, pid_t pid,
           pid_t tid)
{
 struct threads *threads = machine__threads(machine, tid);
 struct thread *th;

 down_write(&threads->lock);
 th = __machine__findnew_thread(machine, pid, tid);
 up_write(&threads->lock);
 return th;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int lock; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* ____machine__findnew_thread (struct machine*,struct threads*,int ,int ,int) ;
 int down_read (int *) ;
 struct threads* machine__threads (struct machine*,int ) ;
 int up_read (int *) ;

struct thread *machine__find_thread(struct machine *machine, pid_t pid,
        pid_t tid)
{
 struct threads *threads = machine__threads(machine, tid);
 struct thread *th;

 down_read(&threads->lock);
 th = ____machine__findnew_thread(machine, threads, pid, tid, 0);
 up_read(&threads->lock);
 return th;
}

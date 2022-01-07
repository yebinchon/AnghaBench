
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* ____machine__findnew_thread (struct machine*,int ,int ,int ,int) ;
 int machine__threads (struct machine*,int ) ;

struct thread *__machine__findnew_thread(struct machine *machine, pid_t pid, pid_t tid)
{
 return ____machine__findnew_thread(machine, machine__threads(machine, tid), pid, tid, 1);
}

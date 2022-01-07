
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ pid_; scalar_t__ tid; } ;



__attribute__((used)) static inline bool thread_stack__per_cpu(struct thread *thread)
{
 return !(thread->tid || thread->pid_);
}

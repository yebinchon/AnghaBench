
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dead; } ;



__attribute__((used)) static inline void thread__exited(struct thread *thread)
{
 thread->dead = 1;
}

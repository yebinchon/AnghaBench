
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int dummy; } ;
struct thread {int dummy; } ;


 int __threads__set_last_match (struct threads*,struct thread*) ;
 scalar_t__ perf_singlethreaded ;

__attribute__((used)) static void
threads__set_last_match(struct threads *threads, struct thread *th)
{
 if (perf_singlethreaded)
  __threads__set_last_match(threads, th);
}

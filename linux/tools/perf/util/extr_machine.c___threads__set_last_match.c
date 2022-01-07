
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {struct thread* last_match; } ;
struct thread {int dummy; } ;



__attribute__((used)) static void
__threads__set_last_match(struct threads *threads, struct thread *th)
{
 threads->last_match = th;
}

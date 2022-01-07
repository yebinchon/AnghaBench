
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; } ;
struct thread_trace {int syscall_stats; TYPE_1__ files; } ;


 int intlist__new (int *) ;
 struct thread_trace* zalloc (int) ;

__attribute__((used)) static struct thread_trace *thread_trace__new(void)
{
 struct thread_trace *ttrace = zalloc(sizeof(struct thread_trace));

 if (ttrace) {
  ttrace->files.max = -1;
  ttrace->syscall_stats = intlist__new(((void*)0));
 }

 return ttrace;
}

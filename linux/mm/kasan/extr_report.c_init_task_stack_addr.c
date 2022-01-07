
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stack; } ;


 TYPE_1__ init_thread_union ;

__attribute__((used)) static inline bool init_task_stack_addr(const void *addr)
{
 return addr >= (void *)&init_thread_union.stack &&
  (addr <= (void *)&init_thread_union.stack +
   sizeof(init_thread_union.stack));
}

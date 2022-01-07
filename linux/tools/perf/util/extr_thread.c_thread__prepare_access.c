
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int __thread__prepare_access (struct thread*) ;
 scalar_t__ dwarf_callchain_users ;

__attribute__((used)) static int thread__prepare_access(struct thread *thread)
{
 int err = 0;

 if (dwarf_callchain_users)
  err = __thread__prepare_access(thread);

 return err;
}

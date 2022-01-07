
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fault_attr {int probability; int interval; int count; int times; int space; scalar_t__ task_filter; } ;
typedef int ssize_t ;
struct TYPE_3__ {int fail_nth; } ;


 unsigned int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,unsigned int) ;
 int atomic_dec_not_zero (int *) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 TYPE_1__* current ;
 int fail_dump (struct fault_attr*) ;
 int fail_stacktrace (struct fault_attr*) ;
 int fail_task (struct fault_attr*,TYPE_1__*) ;
 scalar_t__ in_task () ;
 int prandom_u32 () ;

bool should_fail(struct fault_attr *attr, ssize_t size)
{
 if (in_task()) {
  unsigned int fail_nth = READ_ONCE(current->fail_nth);

  if (fail_nth) {
   if (!WRITE_ONCE(current->fail_nth, fail_nth - 1))
    goto fail;

   return 0;
  }
 }


 if (attr->probability == 0)
  return 0;

 if (attr->task_filter && !fail_task(attr, current))
  return 0;

 if (atomic_read(&attr->times) == 0)
  return 0;

 if (atomic_read(&attr->space) > size) {
  atomic_sub(size, &attr->space);
  return 0;
 }

 if (attr->interval > 1) {
  attr->count++;
  if (attr->count % attr->interval)
   return 0;
 }

 if (attr->probability <= prandom_u32() % 100)
  return 0;

 if (!fail_stacktrace(attr))
  return 0;

fail:
 fail_dump(attr);

 if (atomic_read(&attr->times) != -1)
  atomic_dec_not_zero(&attr->times);

 return 1;
}

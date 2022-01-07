
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct test_driver {size_t cpu; void* stop; void* start; } ;
typedef int ktime_t ;
struct TYPE_5__ {scalar_t__ time; int test_failed; int test_passed; } ;
struct TYPE_4__ {int (* test_func ) () ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cpumask_of (size_t) ;
 int current ;
 int do_div (scalar_t__,int ) ;
 int down_read (int *) ;
 void* get_cycles () ;
 int kthread_should_stop () ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int msleep (int) ;
 TYPE_2__** per_cpu_test_data ;
 int pr_err (char*,size_t) ;
 int prepare_for_test_rwsem ;
 int run_test_mask ;
 int sequential_test_order ;
 scalar_t__ set_cpus_allowed_ptr (int ,int ) ;
 int shuffle_array (int*,int) ;
 int stub1 () ;
 TYPE_1__* test_case_array ;
 int test_repeat_count ;
 int test_report_one_done () ;
 int up_read (int *) ;

__attribute__((used)) static int test_func(void *private)
{
 struct test_driver *t = private;
 int random_array[ARRAY_SIZE(test_case_array)];
 int index, i, j;
 ktime_t kt;
 u64 delta;

 if (set_cpus_allowed_ptr(current, cpumask_of(t->cpu)) < 0)
  pr_err("Failed to set affinity to %d CPU\n", t->cpu);

 for (i = 0; i < ARRAY_SIZE(test_case_array); i++)
  random_array[i] = i;

 if (!sequential_test_order)
  shuffle_array(random_array, ARRAY_SIZE(test_case_array));




 down_read(&prepare_for_test_rwsem);

 t->start = get_cycles();
 for (i = 0; i < ARRAY_SIZE(test_case_array); i++) {
  index = random_array[i];




  if (!((run_test_mask & (1 << index)) >> index))
   continue;

  kt = ktime_get();
  for (j = 0; j < test_repeat_count; j++) {
   if (!test_case_array[index].test_func())
    per_cpu_test_data[t->cpu][index].test_passed++;
   else
    per_cpu_test_data[t->cpu][index].test_failed++;
  }




  delta = (u64) ktime_us_delta(ktime_get(), kt);
  do_div(delta, (u32) test_repeat_count);

  per_cpu_test_data[t->cpu][index].time = delta;
 }
 t->stop = get_cycles();

 up_read(&prepare_for_test_rwsem);
 test_report_one_done();




 while (!kthread_should_stop())
  msleep(10);

 return 0;
}

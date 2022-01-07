
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nrealwriters_stress; int nrealreaders_stress; int * lrsa; int * lwsa; int cur_ops; int n_lock_torture_errors; } ;


 scalar_t__ atomic_read (int *) ;
 TYPE_1__ cxt ;
 int kfree (int *) ;
 int lock_torture_print_module_parms (int ,char*) ;
 int lock_torture_reader ;
 int lock_torture_stats ;
 int lock_torture_stats_print () ;
 int lock_torture_writer ;
 int * reader_tasks ;
 int stats_task ;
 scalar_t__ torture_cleanup_begin () ;
 int torture_cleanup_end () ;
 scalar_t__ torture_onoff_failures () ;
 int torture_stop_kthread (int ,int ) ;
 int * writer_tasks ;

__attribute__((used)) static void lock_torture_cleanup(void)
{
 int i;

 if (torture_cleanup_begin())
  return;







 if (!cxt.lwsa && !cxt.lrsa)
  goto end;

 if (writer_tasks) {
  for (i = 0; i < cxt.nrealwriters_stress; i++)
   torture_stop_kthread(lock_torture_writer,
          writer_tasks[i]);
  kfree(writer_tasks);
  writer_tasks = ((void*)0);
 }

 if (reader_tasks) {
  for (i = 0; i < cxt.nrealreaders_stress; i++)
   torture_stop_kthread(lock_torture_reader,
          reader_tasks[i]);
  kfree(reader_tasks);
  reader_tasks = ((void*)0);
 }

 torture_stop_kthread(lock_torture_stats, stats_task);
 lock_torture_stats_print();

 if (atomic_read(&cxt.n_lock_torture_errors))
  lock_torture_print_module_parms(cxt.cur_ops,
      "End of test: FAILURE");
 else if (torture_onoff_failures())
  lock_torture_print_module_parms(cxt.cur_ops,
      "End of test: LOCK_HOTPLUG");
 else
  lock_torture_print_module_parms(cxt.cur_ops,
      "End of test: SUCCESS");

 kfree(cxt.lwsa);
 cxt.lwsa = ((void*)0);
 kfree(cxt.lrsa);
 cxt.lrsa = ((void*)0);

end:
 torture_cleanup_end();
}

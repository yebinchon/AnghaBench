
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {long max_files; } ;


 int CAP_SYS_ADMIN ;
 int ENFILE ;
 struct file* ERR_PTR (int ) ;
 int IS_ERR (struct file*) ;
 struct file* __alloc_file (int,struct cred const*) ;
 int capable (int ) ;
 TYPE_1__ files_stat ;
 int get_max_files () ;
 long get_nr_files () ;
 int nr_files ;
 int percpu_counter_inc (int *) ;
 scalar_t__ percpu_counter_sum_positive (int *) ;
 int pr_info (char*,int ) ;

struct file *alloc_empty_file(int flags, const struct cred *cred)
{
 static long old_max;
 struct file *f;




 if (get_nr_files() >= files_stat.max_files && !capable(CAP_SYS_ADMIN)) {




  if (percpu_counter_sum_positive(&nr_files) >= files_stat.max_files)
   goto over;
 }

 f = __alloc_file(flags, cred);
 if (!IS_ERR(f))
  percpu_counter_inc(&nr_files);

 return f;

over:

 if (get_nr_files() > old_max) {
  pr_info("VFS: file-max limit %lu reached\n", get_max_files());
  old_max = get_nr_files();
 }
 return ERR_PTR(-ENFILE);
}

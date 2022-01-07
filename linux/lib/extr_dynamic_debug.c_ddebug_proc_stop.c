
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ddebug_lock ;
 int mutex_unlock (int *) ;
 int vpr_info (char*,struct seq_file*,void*) ;

__attribute__((used)) static void ddebug_proc_stop(struct seq_file *m, void *p)
{
 vpr_info("called m=%p p=%p\n", m, p);
 mutex_unlock(&ddebug_lock);
}

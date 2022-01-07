
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ddebug_iter* private; } ;
struct ddebug_iter {int dummy; } ;
typedef void _ddebug ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 void* ddebug_iter_first (struct ddebug_iter*) ;
 void* ddebug_iter_next (struct ddebug_iter*) ;
 int ddebug_lock ;
 int mutex_lock (int *) ;
 int vpr_info (char*,struct seq_file*,unsigned long long) ;

__attribute__((used)) static void *ddebug_proc_start(struct seq_file *m, loff_t *pos)
{
 struct ddebug_iter *iter = m->private;
 struct _ddebug *dp;
 int n = *pos;

 vpr_info("called m=%p *pos=%lld\n", m, (unsigned long long)*pos);

 mutex_lock(&ddebug_lock);

 if (!n)
  return SEQ_START_TOKEN;
 if (n < 0)
  return ((void*)0);
 dp = ddebug_iter_first(iter);
 while (dp != ((void*)0) && --n > 0)
  dp = ddebug_iter_next(iter);
 return dp;
}

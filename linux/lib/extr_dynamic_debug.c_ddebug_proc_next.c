
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ddebug_iter* private; } ;
struct ddebug_iter {int dummy; } ;
typedef void _ddebug ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* ddebug_iter_first (struct ddebug_iter*) ;
 void* ddebug_iter_next (struct ddebug_iter*) ;
 int vpr_info (char*,struct seq_file*,void*,unsigned long long) ;

__attribute__((used)) static void *ddebug_proc_next(struct seq_file *m, void *p, loff_t *pos)
{
 struct ddebug_iter *iter = m->private;
 struct _ddebug *dp;

 vpr_info("called m=%p p=%p *pos=%lld\n",
   m, p, (unsigned long long)*pos);

 if (p == SEQ_START_TOKEN)
  dp = ddebug_iter_first(iter);
 else
  dp = ddebug_iter_next(iter);
 ++*pos;
 return dp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int idx; scalar_t__ pos; int leftover; } ;
struct seq_file {struct trace_iterator* private; } ;
typedef scalar_t__ loff_t ;


 int WARN_ON_ONCE (int ) ;
 void* trace_find_next_entry_inc (struct trace_iterator*) ;

__attribute__((used)) static void *s_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct trace_iterator *iter = m->private;
 int i = (int)*pos;
 void *ent;

 WARN_ON_ONCE(iter->leftover);

 (*pos)++;


 if (iter->idx > i)
  return ((void*)0);

 if (iter->idx < 0)
  ent = trace_find_next_entry_inc(iter);
 else
  ent = iter;

 while (ent && iter->idx < i)
  ent = trace_find_next_entry_inc(iter);

 iter->pos = *pos;

 return ent;
}

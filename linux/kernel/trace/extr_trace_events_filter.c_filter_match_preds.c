
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prog_entry {int when_to_branch; int target; struct filter_pred* pred; } ;
struct filter_pred {int (* fn ) (struct filter_pred*,void*) ;} ;
struct event_filter {int prog; } ;


 struct prog_entry* rcu_dereference_raw (int ) ;
 int stub1 (struct filter_pred*,void*) ;

int filter_match_preds(struct event_filter *filter, void *rec)
{
 struct prog_entry *prog;
 int i;


 if (!filter)
  return 1;


 prog = rcu_dereference_raw(filter->prog);
 if (!prog)
  return 1;

 for (i = 0; prog[i].pred; i++) {
  struct filter_pred *pred = prog[i].pred;
  int match = pred->fn(pred, rec);
  if (match == prog[i].when_to_branch)
   i = prog[i].target;
 }
 return prog[i].target;
}

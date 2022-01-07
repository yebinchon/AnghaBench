
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prog_entry {struct prog_entry* pred; } ;
struct event_filter {int prog; } ;


 int kfree (struct prog_entry*) ;
 struct prog_entry* rcu_access_pointer (int ) ;

__attribute__((used)) static void free_prog(struct event_filter *filter)
{
 struct prog_entry *prog;
 int i;

 prog = rcu_access_pointer(filter->prog);
 if (!prog)
  return;

 for (i = 0; prog[i].pred; i++)
  kfree(prog[i].pred);
 kfree(prog);
}

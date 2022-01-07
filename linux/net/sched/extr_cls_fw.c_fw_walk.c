
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,struct fw_filter*,struct tcf_walker*) ;} ;
struct tcf_proto {int root; } ;
struct fw_head {int * ht; } ;
struct fw_filter {int next; } ;


 int HTSIZE ;
 void* rtnl_dereference (int ) ;
 scalar_t__ stub1 (struct tcf_proto*,struct fw_filter*,struct tcf_walker*) ;

__attribute__((used)) static void fw_walk(struct tcf_proto *tp, struct tcf_walker *arg,
      bool rtnl_held)
{
 struct fw_head *head = rtnl_dereference(tp->root);
 int h;

 if (head == ((void*)0))
  arg->stop = 1;

 if (arg->stop)
  return;

 for (h = 0; h < HTSIZE; h++) {
  struct fw_filter *f;

  for (f = rtnl_dereference(head->ht[h]); f;
       f = rtnl_dereference(f->next)) {
   if (arg->count < arg->skip) {
    arg->count++;
    continue;
   }
   if (arg->fn(tp, f, arg) < 0) {
    arg->stop = 1;
    return;
   }
   arg->count++;
  }
 }
}

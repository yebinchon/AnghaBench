
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct callchain_node {int val; scalar_t__ val_nr; } ;
struct TYPE_5__ {int branch_to; } ;
struct TYPE_4__ {int map; int sym; } ;
struct callchain_list {int branch_count; int predicted_count; int abort_count; int list; int iter_cycles; int iter_count; int cycles_count; TYPE_2__ brtype_stat; int srcline; TYPE_1__ ms; int ip; } ;
struct TYPE_6__ {int cycles; scalar_t__ abort; scalar_t__ predicted; } ;
struct callchain_cursor_node {int iter_cycles; int nr_loop_iter; TYPE_3__ branch_flags; int ip; int branch_from; scalar_t__ branch; int srcline; int map; int sym; } ;
struct callchain_cursor {scalar_t__ pos; scalar_t__ nr; } ;


 int branch_type_count (TYPE_2__*,TYPE_3__*,int ,int ) ;
 int callchain_cursor_advance (struct callchain_cursor*) ;
 struct callchain_cursor_node* callchain_cursor_current (struct callchain_cursor*) ;
 int list_add_tail (int *,int *) ;
 int map__get (int ) ;
 int perror (char*) ;
 int pr_warning (char*) ;
 struct callchain_list* zalloc (int) ;

__attribute__((used)) static int
fill_node(struct callchain_node *node, struct callchain_cursor *cursor)
{
 struct callchain_cursor_node *cursor_node;

 node->val_nr = cursor->nr - cursor->pos;
 if (!node->val_nr)
  pr_warning("Warning: empty node in callchain tree\n");

 cursor_node = callchain_cursor_current(cursor);

 while (cursor_node) {
  struct callchain_list *call;

  call = zalloc(sizeof(*call));
  if (!call) {
   perror("not enough memory for the code path tree");
   return -1;
  }
  call->ip = cursor_node->ip;
  call->ms.sym = cursor_node->sym;
  call->ms.map = map__get(cursor_node->map);
  call->srcline = cursor_node->srcline;

  if (cursor_node->branch) {
   call->branch_count = 1;

   if (cursor_node->branch_from) {




    call->brtype_stat.branch_to = 1;

    if (cursor_node->branch_flags.predicted)
     call->predicted_count = 1;

    if (cursor_node->branch_flags.abort)
     call->abort_count = 1;

    branch_type_count(&call->brtype_stat,
        &cursor_node->branch_flags,
        cursor_node->branch_from,
        cursor_node->ip);
   } else {



    call->brtype_stat.branch_to = 0;
    call->cycles_count =
     cursor_node->branch_flags.cycles;
    call->iter_count = cursor_node->nr_loop_iter;
    call->iter_cycles = cursor_node->iter_cycles;
   }
  }

  list_add_tail(&call->list, &node->val);

  callchain_cursor_advance(cursor);
  cursor_node = callchain_cursor_current(cursor);
 }
 return 0;
}

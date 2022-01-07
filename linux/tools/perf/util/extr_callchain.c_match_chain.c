
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int branch_to; } ;
struct TYPE_9__ {int map; TYPE_1__* sym; } ;
struct callchain_list {int from_count; int iter_cycles; int iter_count; int cycles_count; TYPE_5__ brtype_stat; int abort_count; int predicted_count; int branch_count; int ip; TYPE_3__ ms; int srcline; } ;
struct TYPE_12__ {scalar_t__ cycles; scalar_t__ abort; scalar_t__ predicted; } ;
struct callchain_cursor_node {scalar_t__ iter_cycles; scalar_t__ nr_loop_iter; TYPE_6__ branch_flags; int ip; scalar_t__ branch_from; scalar_t__ branch; int map; TYPE_2__* sym; int srcline; } ;
typedef enum match_result { ____Placeholder_match_result } match_result ;
struct TYPE_10__ {int key; } ;
struct TYPE_8__ {int start; int name; int inlined; } ;
struct TYPE_7__ {int start; int name; int inlined; } ;





 int MATCH_EQ ;
 int MATCH_ERROR ;
 int __fallthrough ;
 int branch_type_count (TYPE_5__*,TYPE_6__*,scalar_t__,int ) ;
 TYPE_4__ callchain_param ;
 int match_chain_dso_addresses (int ,int ,int ,int ) ;
 int match_chain_strings (int ,int ) ;

__attribute__((used)) static enum match_result match_chain(struct callchain_cursor_node *node,
         struct callchain_list *cnode)
{
 enum match_result match = MATCH_ERROR;

 switch (callchain_param.key) {
 case 128:
  match = match_chain_strings(cnode->srcline, node->srcline);
  if (match != MATCH_ERROR)
   break;

  __fallthrough;
 case 129:
  if (node->sym && cnode->ms.sym) {






   if (cnode->ms.sym->inlined || node->sym->inlined) {
    match = match_chain_strings(cnode->ms.sym->name,
           node->sym->name);
    if (match != MATCH_ERROR)
     break;
   } else {
    match = match_chain_dso_addresses(cnode->ms.map, cnode->ms.sym->start,
          node->map, node->sym->start);
    break;
   }
  }

  __fallthrough;
 case 130:
 default:
  match = match_chain_dso_addresses(cnode->ms.map, cnode->ip, node->map, node->ip);
  break;
 }

 if (match == MATCH_EQ && node->branch) {
  cnode->branch_count++;

  if (node->branch_from) {



   cnode->brtype_stat.branch_to = 1;

   if (node->branch_flags.predicted)
    cnode->predicted_count++;

   if (node->branch_flags.abort)
    cnode->abort_count++;

   branch_type_count(&cnode->brtype_stat,
       &node->branch_flags,
       node->branch_from,
       node->ip);
  } else {



   cnode->brtype_stat.branch_to = 0;
   cnode->cycles_count += node->branch_flags.cycles;
   cnode->iter_count += node->nr_loop_iter;
   cnode->iter_cycles += node->iter_cycles;
   cnode->from_count++;
  }
 }

 return match;
}

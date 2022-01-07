
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* cgraph_node_ptr ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* same_body; } ;


 scalar_t__ AVAIL_OVERWRITABLE ;
 scalar_t__ cgraph_function_body_availability (TYPE_1__*) ;

__attribute__((used)) static inline bool cgraph_for_node_and_aliases(cgraph_node_ptr node, bool (*callback)(cgraph_node_ptr, void *), void *data, bool include_overwritable)
{
 cgraph_node_ptr alias;

 if (callback(node, data))
  return 1;

 for (alias = node->same_body; alias; alias = alias->next) {
  if (include_overwritable || cgraph_function_body_availability(alias) > AVAIL_OVERWRITABLE)
   if (cgraph_for_node_and_aliases(alias, callback, data, include_overwritable))
    return 1;
 }

 return 0;
}

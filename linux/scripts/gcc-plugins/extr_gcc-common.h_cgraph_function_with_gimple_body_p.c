
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thunk_p; } ;
struct cgraph_node {int alias; TYPE_1__ thunk; scalar_t__ analyzed; } ;



__attribute__((used)) static inline bool cgraph_function_with_gimple_body_p(struct cgraph_node *node)
{
 return node->analyzed && !node->thunk.thunk_p && !node->alias;
}

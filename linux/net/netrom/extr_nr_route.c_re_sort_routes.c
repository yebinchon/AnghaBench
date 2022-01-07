
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nr_node {int which; TYPE_1__* routes; } ;
struct TYPE_3__ {scalar_t__ quality; } ;


 int swap (TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void re_sort_routes(struct nr_node *nr_node, int x, int y)
{
 if (nr_node->routes[y].quality > nr_node->routes[x].quality) {
  if (nr_node->which == x)
   nr_node->which = y;
  else if (nr_node->which == y)
   nr_node->which = x;

  swap(nr_node->routes[x], nr_node->routes[y]);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct node {int dummy; } ;


 struct property* get_property (struct node*,char*) ;

__attribute__((used)) static bool node_is_interrupt_provider(struct node *node)
{
 struct property *prop;

 prop = get_property(node, "interrupt-controller");
 if (prop)
  return 1;

 prop = get_property(node, "interrupt-map");
 if (prop)
  return 1;

 return 0;
}

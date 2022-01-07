
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; struct device_node* parent; } ;


 char const* kbasename (int ) ;

__attribute__((used)) static const char *device_node_name_for_depth(const struct device_node *np, int depth)
{
 for ( ; np && depth; depth--)
  np = np->parent;

 return kbasename(np->full_name);
}

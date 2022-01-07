
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;


 int cgraph_postorder (struct cgraph_node**) ;

__attribute__((used)) static inline int ipa_reverse_postorder(struct cgraph_node **order)
{
 return cgraph_postorder(order);
}

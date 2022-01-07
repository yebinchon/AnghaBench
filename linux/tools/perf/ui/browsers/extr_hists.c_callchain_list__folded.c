
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_list {int unfolded; scalar_t__ has_children; } ;


 char tree__folded_sign (int ) ;

__attribute__((used)) static char callchain_list__folded(const struct callchain_list *cl)
{
 return cl->has_children ? tree__folded_sign(cl->unfolded) : ' ';
}

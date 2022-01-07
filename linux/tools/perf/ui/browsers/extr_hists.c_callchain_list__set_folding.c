
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_list {int unfolded; int has_children; } ;



__attribute__((used)) static void callchain_list__set_folding(struct callchain_list *cl, bool unfold)
{
 cl->unfolded = unfold ? cl->has_children : 0;
}

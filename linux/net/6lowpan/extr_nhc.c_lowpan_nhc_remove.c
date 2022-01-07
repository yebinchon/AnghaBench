
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {int node; } ;


 int rb_erase (int *,int *) ;
 int rb_root ;

__attribute__((used)) static void lowpan_nhc_remove(struct lowpan_nhc *nhc)
{
 rb_erase(&nhc->node, &rb_root);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int node; } ;


 int lapb_hold (struct lapb_cb*) ;
 int lapb_list ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __lapb_insert_cb(struct lapb_cb *lapb)
{
 list_add(&lapb->node, &lapb_list);
 lapb_hold(lapb);
}

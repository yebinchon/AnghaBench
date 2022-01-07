
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_net; scalar_t__ s_node; } ;
struct atalk_route {int flags; scalar_t__ dev; TYPE_1__ target; struct atalk_route* next; } ;
struct atalk_addr {scalar_t__ s_net; scalar_t__ s_node; } ;


 int RTF_HOST ;
 int RTF_UP ;
 struct atalk_route* atalk_routes ;
 int atalk_routes_lock ;
 struct atalk_route atrtr_default ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct atalk_route *atrtr_find(struct atalk_addr *target)
{





 struct atalk_route *net_route = ((void*)0);
 struct atalk_route *r;

 read_lock_bh(&atalk_routes_lock);
 for (r = atalk_routes; r; r = r->next) {
  if (!(r->flags & RTF_UP))
   continue;

  if (r->target.s_net == target->s_net) {
   if (r->flags & RTF_HOST) {




    if (r->target.s_node == target->s_node)
     goto out;
   } else




    net_route = r;
  }
 }





 if (net_route)
  r = net_route;
 else if (atrtr_default.dev)
  r = &atrtr_default;
 else
  r = ((void*)0);
out:
 read_unlock_bh(&atalk_routes_lock);
 return r;
}

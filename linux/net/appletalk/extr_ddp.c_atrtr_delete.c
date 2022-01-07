
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_net; scalar_t__ s_node; } ;
struct atalk_route {int flags; struct atalk_route* next; int dev; TYPE_1__ target; } ;
struct atalk_addr {scalar_t__ s_net; scalar_t__ s_node; } ;


 int ENOENT ;
 int RTF_GATEWAY ;
 struct atalk_route* atalk_routes ;
 int atalk_routes_lock ;
 int dev_put (int ) ;
 int kfree (struct atalk_route*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int atrtr_delete(struct atalk_addr *addr)
{
 struct atalk_route **r = &atalk_routes;
 int retval = 0;
 struct atalk_route *tmp;

 write_lock_bh(&atalk_routes_lock);
 while ((tmp = *r) != ((void*)0)) {
  if (tmp->target.s_net == addr->s_net &&
      (!(tmp->flags&RTF_GATEWAY) ||
       tmp->target.s_node == addr->s_node)) {
   *r = tmp->next;
   dev_put(tmp->dev);
   kfree(tmp);
   goto out;
  }
  r = &tmp->next;
 }
 retval = -ENOENT;
out:
 write_unlock_bh(&atalk_routes_lock);
 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_iter {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;


 int kfree (struct rhashtable_iter*) ;
 int rhashtable_walk_exit (struct rhashtable_iter*) ;

int tipc_dump_done(struct netlink_callback *cb)
{
 struct rhashtable_iter *hti = (void *)cb->args[4];

 rhashtable_walk_exit(hti);
 kfree(hti);
 return 0;
}

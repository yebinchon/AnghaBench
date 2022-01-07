
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_iter {int dummy; } ;
struct netlink_callback {int* args; } ;


 int kfree (struct rhashtable_iter*) ;
 int rhashtable_walk_exit (struct rhashtable_iter*) ;

__attribute__((used)) static int netlink_diag_dump_done(struct netlink_callback *cb)
{
 struct rhashtable_iter *hti = (void *)cb->args[2];

 if (cb->args[0] == 1)
  rhashtable_walk_exit(hti);

 kfree(hti);

 return 0;
}

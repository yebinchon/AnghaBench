
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {scalar_t__* args; } ;
struct ila_dump_iter {int rhiter; } ;


 int kfree (struct ila_dump_iter*) ;
 int rhashtable_walk_exit (int *) ;

int ila_xlat_nl_dump_done(struct netlink_callback *cb)
{
 struct ila_dump_iter *iter = (struct ila_dump_iter *)cb->args[0];

 rhashtable_walk_exit(&iter->rhiter);

 kfree(iter);

 return 0;
}

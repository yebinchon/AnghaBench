
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int state; } ;


 int LINK_ESTABLISHING ;
 int LINK_FAILINGOVER ;
 int LINK_RESET ;

bool tipc_link_is_reset(struct tipc_link *l)
{
 return l->state & (LINK_RESET | LINK_FAILINGOVER | LINK_ESTABLISHING);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int dummy; } ;


 int link_is_up (struct tipc_link*) ;

bool tipc_link_is_up(struct tipc_link *l)
{
 return link_is_up(l);
}

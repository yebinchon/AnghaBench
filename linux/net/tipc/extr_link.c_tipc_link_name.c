
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {char* name; } ;



char *tipc_link_name(struct tipc_link *l)
{
 return l->name;
}

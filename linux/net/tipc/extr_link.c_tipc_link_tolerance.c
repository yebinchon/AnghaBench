
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {unsigned long tolerance; } ;



unsigned long tipc_link_tolerance(struct tipc_link *l)
{
 return l->tolerance;
}

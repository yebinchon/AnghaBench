
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_table {int dummy; } ;





 size_t NEIGH_ARP_TABLE ;
 size_t NEIGH_DN_TABLE ;
 size_t NEIGH_ND_TABLE ;
 struct neigh_table** neigh_tables ;

__attribute__((used)) static struct neigh_table *neigh_find_table(int family)
{
 struct neigh_table *tbl = ((void*)0);

 switch (family) {
 case 129:
  tbl = neigh_tables[NEIGH_ARP_TABLE];
  break;
 case 128:
  tbl = neigh_tables[NEIGH_ND_TABLE];
  break;
 case 130:
  tbl = neigh_tables[NEIGH_DN_TABLE];
  break;
 }

 return tbl;
}

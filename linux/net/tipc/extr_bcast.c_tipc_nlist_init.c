
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nlist {int self; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct tipc_nlist*,int ,int) ;

void tipc_nlist_init(struct tipc_nlist *nl, u32 self)
{
 memset(nl, 0, sizeof(*nl));
 INIT_LIST_HEAD(&nl->list);
 nl->self = self;
}

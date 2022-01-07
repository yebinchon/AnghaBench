
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tc_u_hnode {scalar_t__ handle; int next; } ;
struct tc_u_common {int hlist; } ;


 struct tc_u_hnode* rtnl_dereference (int ) ;

__attribute__((used)) static struct tc_u_hnode *u32_lookup_ht(struct tc_u_common *tp_c, u32 handle)
{
 struct tc_u_hnode *ht;

 for (ht = rtnl_dereference(tp_c->hlist);
      ht;
      ht = rtnl_dereference(ht->next))
  if (ht->handle == handle)
   break;

 return ht;
}

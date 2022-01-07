
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;


 struct mr_table* ip6mr_get_table (struct net*,int ) ;
 int ip6mr_mr_table_ops ;
 int ip6mr_new_table_set ;
 int ipmr_expire_process ;
 struct mr_table* mr_table_alloc (struct net*,int ,int *,int ,int ) ;

__attribute__((used)) static struct mr_table *ip6mr_new_table(struct net *net, u32 id)
{
 struct mr_table *mrt;

 mrt = ip6mr_get_table(net, id);
 if (mrt)
  return mrt;

 return mr_table_alloc(net, id, &ip6mr_mr_table_ops,
         ipmr_expire_process, ip6mr_new_table_set);
}

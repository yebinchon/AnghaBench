
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;


 int EINVAL ;
 struct mr_table* ERR_PTR (int ) ;
 int RT_TABLE_DEFAULT ;
 int ipmr_expire_process ;
 struct mr_table* ipmr_get_table (struct net*,int) ;
 int ipmr_mr_table_ops ;
 int ipmr_new_table_set ;
 struct mr_table* mr_table_alloc (struct net*,int,int *,int ,int ) ;

__attribute__((used)) static struct mr_table *ipmr_new_table(struct net *net, u32 id)
{
 struct mr_table *mrt;


 if (id != RT_TABLE_DEFAULT && id >= 1000000000)
  return ERR_PTR(-EINVAL);

 mrt = ipmr_get_table(net, id);
 if (mrt)
  return mrt;

 return mr_table_alloc(net, id, &ipmr_mr_table_ops,
         ipmr_expire_process, ipmr_new_table_set);
}

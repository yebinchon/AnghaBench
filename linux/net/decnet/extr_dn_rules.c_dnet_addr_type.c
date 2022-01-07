
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowidn {int daddr; } ;
struct dn_fib_table {int (* lookup ) (struct dn_fib_table*,struct flowidn*,struct dn_fib_res*) ;} ;
struct dn_fib_res {unsigned int type; int * r; } ;
typedef int __le16 ;


 unsigned int RTN_UNICAST ;
 int RT_TABLE_LOCAL ;
 struct dn_fib_table* dn_fib_get_table (int ,int ) ;
 int dn_fib_res_put (struct dn_fib_res*) ;
 int stub1 (struct dn_fib_table*,struct flowidn*,struct dn_fib_res*) ;

unsigned int dnet_addr_type(__le16 addr)
{
 struct flowidn fld = { .daddr = addr };
 struct dn_fib_res res;
 unsigned int ret = RTN_UNICAST;
 struct dn_fib_table *tb = dn_fib_get_table(RT_TABLE_LOCAL, 0);

 res.r = ((void*)0);

 if (tb) {
  if (!tb->lookup(tb, &fld, &res)) {
   ret = res.type;
   dn_fib_res_put(&res);
  }
 }
 return ret;
}

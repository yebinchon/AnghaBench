
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct xt_table {int dummy; } ;
struct net {int dummy; } ;


 struct xt_table* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct xt_table*) ;
 int request_module (char*,int ,char const*) ;
 struct xt_table* xt_find_table_lock (struct net*,size_t,char const*) ;
 int * xt_prefix ;

struct xt_table *xt_request_find_table_lock(struct net *net, u_int8_t af,
         const char *name)
{
 struct xt_table *t = xt_find_table_lock(net, af, name);
 return t;
}

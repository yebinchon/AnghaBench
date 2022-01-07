
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_calipso_ops {int dummy; } ;


 int calipso_ops ;
 struct netlbl_calipso_ops const* xchg (int *,struct netlbl_calipso_ops const*) ;

const struct netlbl_calipso_ops *
netlbl_calipso_ops_register(const struct netlbl_calipso_ops *ops)
{
 return xchg(&calipso_ops, ops);
}

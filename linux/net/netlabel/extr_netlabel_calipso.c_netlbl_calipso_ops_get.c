
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_calipso_ops {int dummy; } ;


 struct netlbl_calipso_ops const* READ_ONCE (int ) ;
 int calipso_ops ;

__attribute__((used)) static const struct netlbl_calipso_ops *netlbl_calipso_ops_get(void)
{
 return READ_ONCE(calipso_ops);
}

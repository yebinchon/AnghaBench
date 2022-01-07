
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;


 int BUG_ON (int) ;
 int O2NET_ERR_MAX ;
 int O2NET_ERR_NONE ;
 int* o2net_sys_err_translations ;

__attribute__((used)) static inline int o2net_sys_err_to_errno(enum o2net_system_error err)
{
 int trans;
 BUG_ON(err >= O2NET_ERR_MAX);
 trans = o2net_sys_err_translations[err];


 BUG_ON(err != O2NET_ERR_NONE && trans == 0);
 return trans;
}

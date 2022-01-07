
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum l2tp_pwtype { ____Placeholder_l2tp_pwtype } l2tp_pwtype ;


 int __L2TP_PWTYPE_MAX ;
 int genl_lock () ;
 int genl_unlock () ;
 int ** l2tp_nl_cmd_ops ;

void l2tp_nl_unregister_ops(enum l2tp_pwtype pw_type)
{
 if (pw_type < __L2TP_PWTYPE_MAX) {
  genl_lock();
  l2tp_nl_cmd_ops[pw_type] = ((void*)0);
  genl_unlock();
 }
}

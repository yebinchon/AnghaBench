
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_nl_cmd_ops {int dummy; } ;
typedef enum l2tp_pwtype { ____Placeholder_l2tp_pwtype } l2tp_pwtype ;


 int EBUSY ;
 int EINVAL ;
 int __L2TP_PWTYPE_MAX ;
 int genl_lock () ;
 int genl_unlock () ;
 struct l2tp_nl_cmd_ops const** l2tp_nl_cmd_ops ;

int l2tp_nl_register_ops(enum l2tp_pwtype pw_type, const struct l2tp_nl_cmd_ops *ops)
{
 int ret;

 ret = -EINVAL;
 if (pw_type >= __L2TP_PWTYPE_MAX)
  goto err;

 genl_lock();
 ret = -EBUSY;
 if (l2tp_nl_cmd_ops[pw_type])
  goto out;

 l2tp_nl_cmd_ops[pw_type] = ops;
 ret = 0;

out:
 genl_unlock();
err:
 return ret;
}

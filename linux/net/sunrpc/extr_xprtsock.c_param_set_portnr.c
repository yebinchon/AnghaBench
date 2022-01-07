
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int RPC_MAX_RESVPORT ;
 int RPC_MIN_RESVPORT ;
 int param_set_uint_minmax (char const*,struct kernel_param const*,int ,int ) ;

__attribute__((used)) static int param_set_portnr(const char *val, const struct kernel_param *kp)
{
 return param_set_uint_minmax(val, kp,
   RPC_MIN_RESVPORT,
   RPC_MAX_RESVPORT);
}

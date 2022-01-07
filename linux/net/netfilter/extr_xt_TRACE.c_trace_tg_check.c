
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; } ;


 int NF_LOG_TYPE_LOG ;
 int nf_logger_find_get (int ,int ) ;

__attribute__((used)) static int trace_tg_check(const struct xt_tgchk_param *par)
{
 return nf_logger_find_get(par->family, NF_LOG_TYPE_LOG);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int family; } ;


 int NF_LOG_TYPE_LOG ;
 int nf_logger_put (int ,int ) ;

__attribute__((used)) static void trace_tg_destroy(const struct xt_tgdtor_param *par)
{
 nf_logger_put(par->family, NF_LOG_TYPE_LOG);
}

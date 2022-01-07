
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int nl_net; } ;
struct fib_config {int fc_type; scalar_t__ fc_dst; scalar_t__ fc_table; TYPE_1__ fc_nlinfo; } ;
typedef scalar_t__ __be32 ;


 int RTN_LOCAL ;
 scalar_t__ RT_TABLE_LOCAL ;
 scalar_t__ RT_TABLE_MAIN ;
 int inet_addr_type_table (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool fib_valid_prefsrc(struct fib_config *cfg, __be32 fib_prefsrc)
{
 if (cfg->fc_type != RTN_LOCAL || !cfg->fc_dst ||
     fib_prefsrc != cfg->fc_dst) {
  u32 tb_id = cfg->fc_table;
  int rc;

  if (tb_id == RT_TABLE_MAIN)
   tb_id = RT_TABLE_LOCAL;

  rc = inet_addr_type_table(cfg->fc_nlinfo.nl_net,
       fib_prefsrc, tb_id);

  if (rc != RTN_LOCAL && tb_id != RT_TABLE_LOCAL) {
   rc = inet_addr_type_table(cfg->fc_nlinfo.nl_net,
        fib_prefsrc, RT_TABLE_LOCAL);
  }

  if (rc != RTN_LOCAL)
   return 0;
 }
 return 1;
}

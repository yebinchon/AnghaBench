
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* pager_env; } ;


 TYPE_1__ subcmd_config ;

void pager_init(const char *pager_env)
{
 subcmd_config.pager_env = pager_env;
}

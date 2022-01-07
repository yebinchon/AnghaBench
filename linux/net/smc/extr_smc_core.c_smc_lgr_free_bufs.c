
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {int dummy; } ;


 int __smc_lgr_free_bufs (struct smc_link_group*,int) ;

__attribute__((used)) static void smc_lgr_free_bufs(struct smc_link_group *lgr)
{

 __smc_lgr_free_bufs(lgr, 0);

 __smc_lgr_free_bufs(lgr, 1);
}

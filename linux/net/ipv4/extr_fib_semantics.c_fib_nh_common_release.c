
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_nh_common {int nhc_rth_input; int nhc_pcpu_rth_output; int nhc_lwtstate; scalar_t__ nhc_dev; } ;


 int dev_put (scalar_t__) ;
 int free_nh_exceptions (struct fib_nh_common*) ;
 int lwtstate_put (int ) ;
 int rt_fibinfo_free (int *) ;
 int rt_fibinfo_free_cpus (int ) ;

void fib_nh_common_release(struct fib_nh_common *nhc)
{
 if (nhc->nhc_dev)
  dev_put(nhc->nhc_dev);

 lwtstate_put(nhc->nhc_lwtstate);
 rt_fibinfo_free_cpus(nhc->nhc_pcpu_rth_output);
 rt_fibinfo_free(&nhc->nhc_rth_input);
 free_nh_exceptions(nhc);
}

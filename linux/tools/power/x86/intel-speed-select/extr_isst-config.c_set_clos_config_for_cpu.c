
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_clos_config {int clos_desired; int clos_max; int clos_min; int clos_prop_prio; int epp; int die_id; int pkg_id; } ;


 int clos_desired ;
 int clos_epp ;
 int clos_max ;
 int clos_min ;
 int clos_prop_prio ;
 int current_clos ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int isst_display_result (int,int ,char*,char*,int) ;
 int isst_set_clos (int,int ,struct isst_clos_config*) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void set_clos_config_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
        void *arg4)
{
 struct isst_clos_config clos_config;
 int ret;

 clos_config.pkg_id = get_physical_package_id(cpu);
 clos_config.die_id = get_physical_die_id(cpu);

 clos_config.epp = clos_epp;
 clos_config.clos_prop_prio = clos_prop_prio;
 clos_config.clos_min = clos_min;
 clos_config.clos_max = clos_max;
 clos_config.clos_desired = clos_desired;
 ret = isst_set_clos(cpu, current_clos, &clos_config);
 if (ret)
  perror("isst_set_clos");
 else
  isst_display_result(cpu, outf, "core-power", "config", ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int cmdline (int,char**) ;
 scalar_t__ cpu_present_set ;
 scalar_t__ cpu_selected_set ;
 int cpu_setsize ;
 scalar_t__ debug ;
 int early_cpuid () ;
 int enable_hwp_on_cpu ;
 int for_all_cpus_in_set (int ,scalar_t__,int ) ;
 int for_packages (scalar_t__,int ) ;
 scalar_t__ has_hwp_request_pkg ;
 int hwp_update_enabled () ;
 int init_data_structures () ;
 int parse_cpuid () ;
 scalar_t__ pkg_present_set ;
 scalar_t__ pkg_selected_set ;
 int print_cpu_msrs ;
 int print_pkg_msrs ;
 int print_version () ;
 int probe_dev_msr () ;
 scalar_t__ req_update_bounds_check () ;
 int set_base_cpu () ;
 int update_cpu_msrs ;
 int update_epb ;
 scalar_t__ update_hwp_enable ;
 int update_hwp_request_pkg ;
 int update_sysfs ;
 int update_turbo ;
 int verify_hwp_is_enabled () ;

int main(int argc, char **argv)
{
 set_base_cpu();
 probe_dev_msr();
 init_data_structures();

 early_cpuid();

 cmdline(argc, argv);

 if (debug)
  print_version();

 parse_cpuid();


 if ((cpu_selected_set == 0) && (pkg_selected_set == 0))
  cpu_selected_set = cpu_present_set;





 if (update_hwp_enable)
  for_all_cpus_in_set(cpu_setsize, cpu_selected_set, enable_hwp_on_cpu);


 verify_hwp_is_enabled();

 if (req_update_bounds_check())
  return -EINVAL;


 if (!update_epb && !update_turbo && !hwp_update_enabled()) {
  if (cpu_selected_set)
   for_all_cpus_in_set(cpu_setsize, cpu_selected_set, print_cpu_msrs);

  if (has_hwp_request_pkg) {
   if (pkg_selected_set == 0)
    pkg_selected_set = pkg_present_set;

   for_packages(pkg_selected_set, print_pkg_msrs);
  }

  return 0;
 }


 if (cpu_selected_set) {
  for_all_cpus_in_set(cpu_setsize, cpu_selected_set, update_sysfs);
  for_all_cpus_in_set(cpu_setsize, cpu_selected_set, update_cpu_msrs);
 } else if (pkg_selected_set)
  for_packages(pkg_selected_set, update_hwp_request_pkg);

 return 0;
}

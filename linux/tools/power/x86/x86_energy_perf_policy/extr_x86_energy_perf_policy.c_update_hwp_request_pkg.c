
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msr_hwp_request {int hwp_epp; int hwp_window; int hwp_desired; int hwp_max; int hwp_min; } ;
struct msr_hwp_cap {int dummy; } ;
struct TYPE_2__ {int hwp_epp; int hwp_window; int hwp_desired; int hwp_max; int hwp_min; } ;


 int MSR_HWP_CAPABILITIES ;
 int MSR_HWP_REQUEST_PKG ;
 int check_hwp_request_v_hwp_capabilities (int,struct msr_hwp_request*,struct msr_hwp_cap*) ;
 scalar_t__ debug ;
 int* first_cpu_in_pkg ;
 int force ;
 int print_hwp_cap (int,struct msr_hwp_cap*,char*) ;
 int print_hwp_request_pkg (int,struct msr_hwp_request*,char*) ;
 int read_hwp_cap (int,struct msr_hwp_cap*,int ) ;
 int read_hwp_request (int,struct msr_hwp_request*,int) ;
 TYPE_1__ req_update ;
 scalar_t__ update_hwp_desired ;
 scalar_t__ update_hwp_epp ;
 scalar_t__ update_hwp_max ;
 scalar_t__ update_hwp_min ;
 scalar_t__ update_hwp_window ;
 int verify_hwp_req_self_consistency (int,struct msr_hwp_request*) ;
 int write_hwp_request (int,struct msr_hwp_request*,int) ;

int update_hwp_request_pkg(int pkg)
{
 struct msr_hwp_request req;
 struct msr_hwp_cap cap;
 int cpu = first_cpu_in_pkg[pkg];

 int msr_offset = MSR_HWP_REQUEST_PKG;

 read_hwp_request(cpu, &req, msr_offset);
 if (debug)
  print_hwp_request_pkg(pkg, &req, "old: ");

 if (update_hwp_min)
  req.hwp_min = req_update.hwp_min;

 if (update_hwp_max)
  req.hwp_max = req_update.hwp_max;

 if (update_hwp_desired)
  req.hwp_desired = req_update.hwp_desired;

 if (update_hwp_window)
  req.hwp_window = req_update.hwp_window;

 if (update_hwp_epp)
  req.hwp_epp = req_update.hwp_epp;

 read_hwp_cap(cpu, &cap, MSR_HWP_CAPABILITIES);
 if (debug)
  print_hwp_cap(cpu, &cap, "");

 if (!force)
  check_hwp_request_v_hwp_capabilities(cpu, &req, &cap);

 verify_hwp_req_self_consistency(cpu, &req);

 write_hwp_request(cpu, &req, msr_offset);

 if (debug) {
  read_hwp_request(cpu, &req, msr_offset);
  print_hwp_request_pkg(pkg, &req, "new: ");
 }
 return 0;
}

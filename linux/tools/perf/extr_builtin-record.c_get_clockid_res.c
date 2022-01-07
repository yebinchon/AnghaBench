
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int clockid_t ;


 int NSEC_PER_SEC ;
 int clock_getres (int ,struct timespec*) ;
 int pr_warning (char*) ;

__attribute__((used)) static int get_clockid_res(clockid_t clk_id, u64 *res_ns)
{
 struct timespec res;

 *res_ns = 0;
 if (!clock_getres(clk_id, &res))
  *res_ns = res.tv_nsec + res.tv_sec * NSEC_PER_SEC;
 else
  pr_warning("WARNING: Failed to determine specified clock resolution.\n");

 return 0;
}

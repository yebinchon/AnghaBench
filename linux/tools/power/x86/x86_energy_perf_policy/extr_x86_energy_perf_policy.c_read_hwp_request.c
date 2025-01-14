
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_request {unsigned long long hwp_epp; unsigned long long hwp_window; unsigned long long hwp_use_pkg; void* hwp_desired; void* hwp_max; void* hwp_min; } ;


 int get_msr (int,unsigned int,unsigned long long*) ;
 void* msr_perf_2_ratio (unsigned long long) ;

void read_hwp_request(int cpu, struct msr_hwp_request *hwp_req, unsigned int msr_offset)
{
 unsigned long long msr;

 get_msr(cpu, msr_offset, &msr);

 hwp_req->hwp_min = msr_perf_2_ratio((((msr) >> 0) & 0xff));
 hwp_req->hwp_max = msr_perf_2_ratio((((msr) >> 8) & 0xff));
 hwp_req->hwp_desired = msr_perf_2_ratio((((msr) >> 16) & 0xff));
 hwp_req->hwp_epp = (((msr) >> 24) & 0xff);
 hwp_req->hwp_window = (((msr) >> 32) & 0x3ff);
 hwp_req->hwp_use_pkg = (((msr) >> 42) & 0x1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_printf (char*,int,...) ;
 int isst_send_msr_command (int,int,int ,unsigned long long*) ;

int isst_get_trl_bucket_info(int cpu, unsigned long long *buckets_info)
{
 int ret;

 debug_printf("cpu:%d bucket info via MSR\n", cpu);

 *buckets_info = 0;

 ret = isst_send_msr_command(cpu, 0x1ae, 0, buckets_info);
 if (ret)
  return ret;

 debug_printf("cpu:%d bucket info via MSR successful 0x%llx\n", cpu,
       *buckets_info);

 return 0;
}

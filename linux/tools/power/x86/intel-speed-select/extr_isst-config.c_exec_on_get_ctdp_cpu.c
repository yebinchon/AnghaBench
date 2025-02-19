
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isst_ctdp_display_core_info (int,int ,void*,unsigned int) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void exec_on_get_ctdp_cpu(int cpu, void *arg1, void *arg2, void *arg3,
     void *arg4)
{
 int (*fn_ptr)(int cpu, void *arg);
 int ret;

 fn_ptr = arg1;
 ret = fn_ptr(cpu, arg2);
 if (ret)
  perror("get_tdp_*");
 else
  isst_ctdp_display_core_info(cpu, outf, arg3,
         *(unsigned int *)arg4);
}

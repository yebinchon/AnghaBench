
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_clos ;
 int isst_clos_associate (int,int ) ;
 int isst_display_result (int,int ,char*,char*,int) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void set_clos_assoc_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
       void *arg4)
{
 int ret;

 ret = isst_clos_associate(cpu, current_clos);
 if (ret)
  perror("isst_clos_associate");
 else
  isst_display_result(cpu, outf, "core-power", "assoc", ret);
}

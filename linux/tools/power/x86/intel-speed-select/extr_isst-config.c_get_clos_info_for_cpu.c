
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isst_clos_display_clos_information (int,int ,int,int) ;
 int isst_clos_get_clos_information (int,int*,int*) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void get_clos_info_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
      void *arg4)
{
 int enable, ret, prio_type;

 ret = isst_clos_get_clos_information(cpu, &enable, &prio_type);
 if (ret)
  perror("isst_clos_get_info");
 else
  isst_clos_display_clos_information(cpu, outf, enable, prio_type);
}

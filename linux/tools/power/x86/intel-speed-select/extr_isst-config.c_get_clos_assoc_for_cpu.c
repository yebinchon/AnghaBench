
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isst_clos_display_assoc_information (int,int ,int) ;
 int isst_clos_get_assoc_status (int,int*) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void get_clos_assoc_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
       void *arg4)
{
 int clos, ret;

 ret = isst_clos_get_assoc_status(cpu, &clos);
 if (ret)
  perror("isst_clos_get_assoc_status");
 else
  isst_clos_display_assoc_information(cpu, outf, clos);
}

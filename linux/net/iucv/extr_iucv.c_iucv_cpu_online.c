
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iucv_declare_cpu (int *) ;
 int iucv_path_table ;

__attribute__((used)) static int iucv_cpu_online(unsigned int cpu)
{
 if (!iucv_path_table)
  return 0;
 iucv_declare_cpu(((void*)0));
 return 0;
}

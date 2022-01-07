
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int header ;
typedef int FILE ;


 int format_and_print (int *,int,char*,char*) ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int snprintf (char*,int,char*,unsigned int) ;

void isst_ctdp_display_core_info(int cpu, FILE *outf, char *prefix,
     unsigned int val)
{
 char header[256];
 char value[256];

 snprintf(header, sizeof(header), "package-%d",
   get_physical_package_id(cpu));
 format_and_print(outf, 1, header, ((void*)0));
 snprintf(header, sizeof(header), "die-%d", get_physical_die_id(cpu));
 format_and_print(outf, 2, header, ((void*)0));
 snprintf(header, sizeof(header), "cpu-%d", cpu);
 format_and_print(outf, 3, header, ((void*)0));

 snprintf(value, sizeof(value), "%u", val);
 format_and_print(outf, 4, prefix, value);

 format_and_print(outf, 1, ((void*)0), ((void*)0));
}

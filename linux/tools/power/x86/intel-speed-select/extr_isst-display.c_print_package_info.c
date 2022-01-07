
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int header ;
typedef int FILE ;


 int format_and_print (int *,int,char*,int *) ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void print_package_info(int cpu, FILE *outf)
{
 char header[256];

 snprintf(header, sizeof(header), "package-%d",
   get_physical_package_id(cpu));
 format_and_print(outf, 1, header, ((void*)0));
 snprintf(header, sizeof(header), "die-%d", get_physical_die_id(cpu));
 format_and_print(outf, 2, header, ((void*)0));
 snprintf(header, sizeof(header), "cpu-%d", cpu);
 format_and_print(outf, 3, header, ((void*)0));
}

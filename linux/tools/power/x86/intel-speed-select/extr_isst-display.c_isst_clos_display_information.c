
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct isst_clos_config {int epp; int clos_prop_prio; int clos_min; int clos_max; int clos_desired; } ;
typedef int header ;
typedef int FILE ;


 int format_and_print (int *,int,char*,char*) ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int snprintf (char*,int,char*,...) ;

void isst_clos_display_information(int cpu, FILE *outf, int clos,
       struct isst_clos_config *clos_config)
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

 snprintf(header, sizeof(header), "core-power");
 format_and_print(outf, 4, header, ((void*)0));

 snprintf(header, sizeof(header), "clos");
 snprintf(value, sizeof(value), "%d", clos);
 format_and_print(outf, 5, header, value);

 snprintf(header, sizeof(header), "epp");
 snprintf(value, sizeof(value), "%d", clos_config->epp);
 format_and_print(outf, 5, header, value);

 snprintf(header, sizeof(header), "clos-proportional-priority");
 snprintf(value, sizeof(value), "%d", clos_config->clos_prop_prio);
 format_and_print(outf, 5, header, value);

 snprintf(header, sizeof(header), "clos-min");
 snprintf(value, sizeof(value), "%d", clos_config->clos_min);
 format_and_print(outf, 5, header, value);

 snprintf(header, sizeof(header), "clos-max");
 snprintf(value, sizeof(value), "%d", clos_config->clos_max);
 format_and_print(outf, 5, header, value);

 snprintf(header, sizeof(header), "clos-desired");
 snprintf(value, sizeof(value), "%d", clos_config->clos_desired);
 format_and_print(outf, 5, header, value);

 format_and_print(outf, 1, ((void*)0), ((void*)0));
}

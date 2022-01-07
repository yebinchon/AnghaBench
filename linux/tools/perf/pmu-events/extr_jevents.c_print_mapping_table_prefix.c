
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void print_mapping_table_prefix(FILE *outfp)
{
 fprintf(outfp, "struct pmu_events_map pmu_events_map[] = {\n");
}

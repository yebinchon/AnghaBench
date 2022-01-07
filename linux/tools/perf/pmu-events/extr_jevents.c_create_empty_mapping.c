
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _Exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int perror (char*) ;
 int pr_info (char*,int ) ;
 int print_mapping_table_prefix (int *) ;
 int print_mapping_table_suffix (int *) ;
 int prog ;

__attribute__((used)) static void create_empty_mapping(const char *output_file)
{
 FILE *outfp;

 pr_info("%s: Creating empty pmu_events_map[] table\n", prog);


 outfp = fopen(output_file, "w");
 if (!outfp) {
  perror("fopen()");
  _Exit(1);
 }

 fprintf(outfp, "#include \"pmu-events/pmu-events.h\"\n");
 print_mapping_table_prefix(outfp);
 print_mapping_table_suffix(outfp);
 fclose(outfp);
}

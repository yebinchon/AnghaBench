
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 char* fgets (char*,int,int *) ;
 char* file_name_to_table_name (char*) ;
 char* fixregex (char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 char* malloc (int) ;
 int pr_info (char*,int ,char*,...) ;
 int print_mapping_table_prefix (int *) ;
 int print_mapping_table_suffix (int *) ;
 int prog ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int process_mapfile(FILE *outfp, char *fpath)
{
 int n = 16384;
 FILE *mapfp;
 char *save = ((void*)0);
 char *line, *p;
 int line_num;
 char *tblname;

 pr_info("%s: Processing mapfile %s\n", prog, fpath);

 line = malloc(n);
 if (!line)
  return -1;

 mapfp = fopen(fpath, "r");
 if (!mapfp) {
  pr_info("%s: Error %s opening %s\n", prog, strerror(errno),
    fpath);
  return -1;
 }

 print_mapping_table_prefix(outfp);


 p = fgets(line, n, mapfp);
 if (!p)
  goto out;

 line_num = 1;
 while (1) {
  char *cpuid, *version, *type, *fname;

  line_num++;
  p = fgets(line, n, mapfp);
  if (!p)
   break;

  if (line[0] == '#' || line[0] == '\n')
   continue;

  if (line[strlen(line)-1] != '\n') {

   pr_info("%s: Mapfile %s: line %d too long, aborting\n",
     prog, fpath, line_num);
   return -1;
  }
  line[strlen(line)-1] = '\0';

  cpuid = fixregex(strtok_r(p, ",", &save));
  version = strtok_r(((void*)0), ",", &save);
  fname = strtok_r(((void*)0), ",", &save);
  type = strtok_r(((void*)0), ",", &save);

  tblname = file_name_to_table_name(fname);
  fprintf(outfp, "{\n");
  fprintf(outfp, "\t.cpuid = \"%s\",\n", cpuid);
  fprintf(outfp, "\t.version = \"%s\",\n", version);
  fprintf(outfp, "\t.type = \"%s\",\n", type);
  fprintf(outfp, "\t.table = %s\n", tblname);
  fprintf(outfp, "},\n");
 }

out:
 print_mapping_table_suffix(outfp);
 return 0;
}

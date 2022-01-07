
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {size_t type; char* name; struct symbol* visited; int defn; scalar_t__ is_extern; scalar_t__ is_override; } ;
struct option {char* member_0; int member_1; char member_3; int member_2; } ;
struct TYPE_2__ {char n; } ;
typedef int FILE ;


 int EOF ;
 int HASH_BUCKETS ;
 int * debugfile ;
 scalar_t__ errors ;
 int fclose (int *) ;
 int flag_debug ;
 int flag_dump_defs ;
 int flag_dump_types ;
 int flag_preserve ;
 int flag_reference ;
 int flag_rel_crcs ;
 int flag_warnings ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,int,int,double) ;
 int fputs (char*,int *) ;
 int genksyms_usage () ;
 int getopt (int,char**,char*) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 int nsyms ;
 int optarg ;
 int perror (int ) ;
 int print_list (int *,int ) ;
 int putc (char,int *) ;
 int read_reference (int *) ;
 int * stderr ;
 TYPE_1__* symbol_types ;
 struct symbol* visited_symbols ;
 int yyparse () ;

int main(int argc, char **argv)
{
 FILE *dumpfile = ((void*)0), *ref_file = ((void*)0);
 int o;
 while ((o = getopt(argc, argv, "s:dwqVDr:T:phR")) != EOF)

  switch (o) {
  case 'd':
   flag_debug++;
   break;
  case 'w':
   flag_warnings = 1;
   break;
  case 'q':
   flag_warnings = 0;
   break;
  case 'V':
   fputs("genksyms version 2.5.60\n", stderr);
   break;
  case 'D':
   flag_dump_defs = 1;
   break;
  case 'r':
   flag_reference = 1;
   ref_file = fopen(optarg, "r");
   if (!ref_file) {
    perror(optarg);
    return 1;
   }
   break;
  case 'T':
   flag_dump_types = 1;
   dumpfile = fopen(optarg, "w");
   if (!dumpfile) {
    perror(optarg);
    return 1;
   }
   break;
  case 'p':
   flag_preserve = 1;
   break;
  case 'h':
   genksyms_usage();
   return 0;
  case 'R':
   flag_rel_crcs = 1;
   break;
  default:
   genksyms_usage();
   return 1;
  }
 {
  extern int yydebug;
  extern int yy_flex_debug;

  yydebug = (flag_debug > 1);
  yy_flex_debug = (flag_debug > 2);

  debugfile = stderr;

 }

 if (flag_reference) {
  read_reference(ref_file);
  fclose(ref_file);
 }

 yyparse();

 if (flag_dump_types && visited_symbols) {
  while (visited_symbols != (struct symbol *)-1L) {
   struct symbol *sym = visited_symbols;

   if (sym->is_override)
    fputs("override ", dumpfile);
   if (symbol_types[sym->type].n) {
    putc(symbol_types[sym->type].n, dumpfile);
    putc('#', dumpfile);
   }
   fputs(sym->name, dumpfile);
   putc(' ', dumpfile);
   if (sym->is_extern)
    fputs("extern ", dumpfile);
   print_list(dumpfile, sym->defn);
   putc('\n', dumpfile);

   visited_symbols = sym->visited;
   sym->visited = ((void*)0);
  }
 }

 if (flag_debug) {
  fprintf(debugfile, "Hash table occupancy %d/%d = %g\n",
   nsyms, HASH_BUCKETS,
   (double)nsyms / (double)HASH_BUCKETS);
 }

 if (dumpfile)
  fclose(dumpfile);

 return errors != 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt_info {char const* outname; long long boot_cpuid_phys; int dtsflags; int dt; } ;
typedef int FILE ;


 int DEFAULT_FDT_VERSION ;
 int DTSF_PLUGIN ;
 int EOF ;
 int PHANDLE_BOTH ;
 int PHANDLE_EPAPR ;
 int PHANDLE_LEGACY ;
 char const* alignsize ;
 scalar_t__ annotate ;
 int auto_label_aliases ;
 void* depfile ;
 int die (char*,...) ;
 struct dt_info* dt_from_blob (char const*) ;
 struct dt_info* dt_from_fs (char const*) ;
 struct dt_info* dt_from_source (char const*) ;
 int dt_to_asm (int *,struct dt_info*,int) ;
 int dt_to_blob (int *,struct dt_info*,int) ;
 int dt_to_source (int *,struct dt_info*) ;
 int dt_to_yaml (int *,struct dt_info*) ;
 int errno ;
 int exit (int ) ;
 int fclose (void*) ;
 int fill_fullpaths (int ,char*) ;
 void* fopen (char const*,char*) ;
 int fprintf (void*,char*,char const*) ;
 int fputc (char,void*) ;
 int generate_fixups ;
 int generate_fixups_tree (struct dt_info*,char*) ;
 int generate_label_tree (struct dt_info*,char*,int) ;
 int generate_local_fixups_tree (struct dt_info*,char*) ;
 int generate_symbols ;
 char* guess_input_format (char const*,char*) ;
 char* guess_type_by_name (char const*,int *) ;
 int is_power_of_2 (char const*) ;
 void* minsize ;
 char const* optarg ;
 int optind ;
 void* padsize ;
 int parse_checks_option (int,int,char const*) ;
 int phandle_format ;
 int process_checks (int,struct dt_info*) ;
 scalar_t__ quiet ;
 void* reservenum ;
 int sort_tree (struct dt_info*) ;
 int srcfile_add_search_path (char const*) ;
 int * stdout ;
 scalar_t__ streq (char const*,char*) ;
 int strerror (int ) ;
 void* strtol (char const*,int *,int ) ;
 long long strtoll (char const*,int *,int ) ;
 int usage (char*) ;
 int util_getopt_long () ;
 int util_version () ;

int main(int argc, char *argv[])
{
 struct dt_info *dti;
 const char *inform = ((void*)0);
 const char *outform = ((void*)0);
 const char *outname = "-";
 const char *depname = ((void*)0);
 bool force = 0, sort = 0;
 const char *arg;
 int opt;
 FILE *outf = ((void*)0);
 int outversion = DEFAULT_FDT_VERSION;
 long long cmdline_boot_cpuid = -1;

 quiet = 0;
 reservenum = 0;
 minsize = 0;
 padsize = 0;
 alignsize = 0;

 while ((opt = util_getopt_long()) != EOF) {
  switch (opt) {
  case 'I':
   inform = optarg;
   break;
  case 'O':
   outform = optarg;
   break;
  case 'o':
   outname = optarg;
   break;
  case 'V':
   outversion = strtol(optarg, ((void*)0), 0);
   break;
  case 'd':
   depname = optarg;
   break;
  case 'R':
   reservenum = strtol(optarg, ((void*)0), 0);
   break;
  case 'S':
   minsize = strtol(optarg, ((void*)0), 0);
   break;
  case 'p':
   padsize = strtol(optarg, ((void*)0), 0);
   break;
  case 'a':
   alignsize = strtol(optarg, ((void*)0), 0);
   if (!is_power_of_2(alignsize))
    die("Invalid argument \"%d\" to -a option\n",
        alignsize);
   break;
  case 'f':
   force = 1;
   break;
  case 'q':
   quiet++;
   break;
  case 'b':
   cmdline_boot_cpuid = strtoll(optarg, ((void*)0), 0);
   break;
  case 'i':
   srcfile_add_search_path(optarg);
   break;
  case 'v':
   util_version();
  case 'H':
   if (streq(optarg, "legacy"))
    phandle_format = PHANDLE_LEGACY;
   else if (streq(optarg, "epapr"))
    phandle_format = PHANDLE_EPAPR;
   else if (streq(optarg, "both"))
    phandle_format = PHANDLE_BOTH;
   else
    die("Invalid argument \"%s\" to -H option\n",
        optarg);
   break;

  case 's':
   sort = 1;
   break;

  case 'W':
   parse_checks_option(1, 0, optarg);
   break;

  case 'E':
   parse_checks_option(0, 1, optarg);
   break;

  case '@':
   generate_symbols = 1;
   break;
  case 'A':
   auto_label_aliases = 1;
   break;
  case 'T':
   annotate++;
   break;

  case 'h':
   usage(((void*)0));
  default:
   usage("unknown option");
  }
 }

 if (argc > (optind+1))
  usage("missing files");
 else if (argc < (optind+1))
  arg = "-";
 else
  arg = argv[optind];


 if (minsize && padsize)
  die("Can't set both -p and -S\n");

 if (depname) {
  depfile = fopen(depname, "w");
  if (!depfile)
   die("Couldn't open dependency file %s: %s\n", depname,
       strerror(errno));
  fprintf(depfile, "%s:", outname);
 }

 if (inform == ((void*)0))
  inform = guess_input_format(arg, "dts");
 if (outform == ((void*)0)) {
  outform = guess_type_by_name(outname, ((void*)0));
  if (outform == ((void*)0)) {
   if (streq(inform, "dts"))
    outform = "dtb";
   else
    outform = "dts";
  }
 }
 if (annotate && (!streq(inform, "dts") || !streq(outform, "dts")))
  die("--annotate requires -I dts -O dts\n");
 if (streq(inform, "dts"))
  dti = dt_from_source(arg);
 else if (streq(inform, "fs"))
  dti = dt_from_fs(arg);
 else if(streq(inform, "dtb"))
  dti = dt_from_blob(arg);
 else
  die("Unknown input format \"%s\"\n", inform);

 dti->outname = outname;

 if (depfile) {
  fputc('\n', depfile);
  fclose(depfile);
 }

 if (cmdline_boot_cpuid != -1)
  dti->boot_cpuid_phys = cmdline_boot_cpuid;

 fill_fullpaths(dti->dt, "");


 if (dti->dtsflags & DTSF_PLUGIN) {
  generate_fixups = 1;
 }

 process_checks(force, dti);

 if (auto_label_aliases)
  generate_label_tree(dti, "aliases", 0);

 if (generate_symbols)
  generate_label_tree(dti, "__symbols__", 1);

 if (generate_fixups) {
  generate_fixups_tree(dti, "__fixups__");
  generate_local_fixups_tree(dti, "__local_fixups__");
 }

 if (sort)
  sort_tree(dti);

 if (streq(outname, "-")) {
  outf = stdout;
 } else {
  outf = fopen(outname, "wb");
  if (! outf)
   die("Couldn't open output file %s: %s\n",
       outname, strerror(errno));
 }

 if (streq(outform, "dts")) {
  dt_to_source(outf, dti);

 } else if (streq(outform, "yaml")) {
  if (!streq(inform, "dts"))
   die("YAML output format requires dts input format\n");
  dt_to_yaml(outf, dti);

 } else if (streq(outform, "dtb")) {
  dt_to_blob(outf, dti, outversion);
 } else if (streq(outform, "asm")) {
  dt_to_asm(outf, dti, outversion);
 } else if (streq(outform, "null")) {

 } else {
  die("Unknown output format \"%s\"\n", outform);
 }

 exit(0);
}

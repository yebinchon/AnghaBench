
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data_convert_opts {int force; int all; } ;
struct option {int dummy; } ;


 struct option const OPT_BOOLEAN (float,char*,int*,char*) ;
 struct option const OPT_END () ;
 struct option const OPT_INCR (char,char*,int *,char*) ;
 struct option const OPT_STRING (char,char*,char const**,char*,char*) ;
 int bt_convert__perf2ctf (char const*,char const*,struct perf_data_convert_opts*) ;
 int data_convert_usage ;
 char const* input_name ;
 int parse_options (int,char const**,struct option const*,int ,int ) ;
 int pr_err (char*) ;
 int usage_with_options (int ,struct option const*) ;
 int verbose ;

__attribute__((used)) static int cmd_data_convert(int argc, const char **argv)
{
 const char *to_ctf = ((void*)0);
 struct perf_data_convert_opts opts = {
  .force = 0,
  .all = 0,
 };
 const struct option options[] = {
  OPT_INCR('v', "verbose", &verbose, "be more verbose"),
  OPT_STRING('i', "input", &input_name, "file", "input file name"),



  OPT_BOOLEAN('f', "force", &opts.force, "don't complain, do it"),
  OPT_BOOLEAN(0, "all", &opts.all, "Convert all events"),
  OPT_END()
 };


 pr_err("No conversion support compiled in. perf should be compiled with environment variables LIBBABELTRACE=1 and LIBBABELTRACE_DIR=/path/to/libbabeltrace/\n");
 return -1;


 argc = parse_options(argc, argv, options,
        data_convert_usage, 0);
 if (argc) {
  usage_with_options(data_convert_usage, options);
  return -1;
 }

 if (to_ctf) {



  pr_err("The libbabeltrace support is not compiled in.\n");
  return -1;

 }

 return 0;
}

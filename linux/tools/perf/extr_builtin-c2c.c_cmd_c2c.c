
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int c2c_options ;
 int c2c_usage ;
 int parse_options (int,char const**,int ,int ,int ) ;
 int perf_c2c__record (int,char const**) ;
 int perf_c2c__report (int,char const**) ;
 int strncmp (char const*,char*,int) ;
 int usage_with_options (int ,int ) ;

int cmd_c2c(int argc, const char **argv)
{
 argc = parse_options(argc, argv, c2c_options, c2c_usage,
        PARSE_OPT_STOP_AT_NON_OPTION);

 if (!argc)
  usage_with_options(c2c_usage, c2c_options);

 if (!strncmp(argv[0], "rec", 3)) {
  return perf_c2c__record(argc, argv);
 } else if (!strncmp(argv[0], "rep", 3)) {
  return perf_c2c__report(argc, argv);
 } else {
  usage_with_options(c2c_usage, c2c_options);
 }

 return 0;
}

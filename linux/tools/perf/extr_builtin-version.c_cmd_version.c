
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ build_options; } ;


 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int library_status () ;
 int parse_options (int,char const**,int ,int ,int ) ;
 char* perf_version_string ;
 int printf (char*,char*) ;
 TYPE_1__ version ;
 int version_options ;
 int version_usage ;
 int version_verbose ;

int cmd_version(int argc, const char **argv)
{
 argc = parse_options(argc, argv, version_options, version_usage,
        PARSE_OPT_STOP_AT_NON_OPTION);

 printf("perf version %s\n", perf_version_string);

 if (version.build_options || version_verbose == 1)
  library_status();

 return 0;
}

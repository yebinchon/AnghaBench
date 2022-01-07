
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int parse_options_subcommand (int,char const**,struct option const*,int *,char const**,int) ;

int parse_options(int argc, const char **argv, const struct option *options,
    const char * const usagestr[], int flags)
{
 return parse_options_subcommand(argc, argv, options, ((void*)0),
     (const char **) usagestr, flags);
}

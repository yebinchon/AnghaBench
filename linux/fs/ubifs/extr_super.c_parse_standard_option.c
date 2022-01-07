
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SB_SYNCHRONOUS ;
 int pr_notice (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_standard_option(const char *option)
{

 pr_notice("UBIFS: parse %s\n", option);
 if (!strcmp(option, "sync"))
  return SB_SYNCHRONOUS;
 return 0;
}

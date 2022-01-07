
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int PF_INET6 ;
 int strcmp (char const*,char*) ;
 int usage (char const*) ;

__attribute__((used)) static int parse_protocol_family(const char *filepath, const char *optarg)
{
 if (!strcmp(optarg, "4"))
  return PF_INET;
 if (!strcmp(optarg, "6"))
  return PF_INET6;

 usage(filepath);
}

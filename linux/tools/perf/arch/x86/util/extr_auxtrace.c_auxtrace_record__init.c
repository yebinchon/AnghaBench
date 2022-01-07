
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct auxtrace_record {int dummy; } ;
typedef int buffer ;


 struct auxtrace_record* auxtrace_record__init_intel (struct evlist*,int*) ;
 int get_cpuid (char*,int) ;
 int strncmp (char*,char*,int) ;

struct auxtrace_record *auxtrace_record__init(struct evlist *evlist,
           int *err)
{
 char buffer[64];
 int ret;

 *err = 0;

 ret = get_cpuid(buffer, sizeof(buffer));
 if (ret) {
  *err = ret;
  return ((void*)0);
 }

 if (!strncmp(buffer, "GenuineIntel,", 13))
  return auxtrace_record__init_intel(evlist, err);

 return ((void*)0);
}

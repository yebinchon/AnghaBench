
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_record {int dummy; } ;


 int free (struct auxtrace_record*) ;

__attribute__((used)) static void cpumsf_free(struct auxtrace_record *itr)
{
 free(itr);
}

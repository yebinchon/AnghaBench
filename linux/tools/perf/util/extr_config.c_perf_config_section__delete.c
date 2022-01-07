
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_section {int name; } ;


 int free (struct perf_config_section*) ;
 int perf_config_section__purge (struct perf_config_section*) ;
 int zfree (int *) ;

__attribute__((used)) static void perf_config_section__delete(struct perf_config_section *section)
{
 perf_config_section__purge(section);
 zfree(&section->name);
 free(section);
}

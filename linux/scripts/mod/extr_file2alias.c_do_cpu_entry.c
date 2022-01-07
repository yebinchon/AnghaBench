
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int cpu_feature ;
 int feature ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int do_cpu_entry(const char *filename, void *symval, char *alias)
{
 DEF_FIELD(symval, cpu_feature, feature);

 sprintf(alias, "cpu:type:*:feature:*%04X*", feature);
 return 1;
}

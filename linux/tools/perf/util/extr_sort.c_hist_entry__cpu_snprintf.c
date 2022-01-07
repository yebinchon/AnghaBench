
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int cpu; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int hist_entry__cpu_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%*.*d", width, width, he->cpu);
}

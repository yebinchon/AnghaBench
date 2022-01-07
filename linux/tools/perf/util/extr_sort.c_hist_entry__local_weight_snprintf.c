
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;


 int he_weight (struct hist_entry*) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,int ) ;

__attribute__((used)) static int hist_entry__local_weight_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%-*llu", width, he_weight(he));
}

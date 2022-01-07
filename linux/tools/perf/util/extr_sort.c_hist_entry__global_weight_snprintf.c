
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int weight; } ;
struct hist_entry {TYPE_1__ stat; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,int ) ;

__attribute__((used)) static int hist_entry__global_weight_snprintf(struct hist_entry *he, char *bf,
           size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%-*llu", width, he->stat.weight);
}

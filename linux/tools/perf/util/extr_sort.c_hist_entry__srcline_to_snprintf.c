
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {TYPE_1__* branch_info; } ;
struct TYPE_2__ {int srcline_to; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int hist_entry__srcline_to_snprintf(struct hist_entry *he, char *bf,
     size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%-*.*s", width, width, he->branch_info->srcline_to);
}

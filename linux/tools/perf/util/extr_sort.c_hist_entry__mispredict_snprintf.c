
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {TYPE_2__* branch_info; } ;
struct TYPE_3__ {scalar_t__ mispred; scalar_t__ predicted; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,unsigned int,char const*) ;

__attribute__((used)) static int hist_entry__mispredict_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width){
 static const char *out = "N/A";

 if (he->branch_info) {
  if (he->branch_info->flags.predicted)
   out = "N";
  else if (he->branch_info->flags.mispred)
   out = "Y";
 }

 return repsep_snprintf(bf, size, "%-*.*s", width, width, out);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {int time; } ;
typedef int he_time ;
struct TYPE_2__ {scalar_t__ nanosecs; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,char*) ;
 TYPE_1__ symbol_conf ;
 int timestamp__scnprintf_nsec (int ,char*,int) ;
 int timestamp__scnprintf_usec (int ,char*,int) ;

__attribute__((used)) static int hist_entry__time_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 char he_time[32];

 if (symbol_conf.nanosecs)
  timestamp__scnprintf_nsec(he->time, he_time,
       sizeof(he_time));
 else
  timestamp__scnprintf_usec(he->time, he_time,
       sizeof(he_time));

 return repsep_snprintf(bf, size, "%-.*s", width, he_time);
}

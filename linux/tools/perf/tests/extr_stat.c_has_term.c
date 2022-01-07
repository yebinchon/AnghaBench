
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_record_stat_config {unsigned int nr; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ tag; scalar_t__ val; } ;



__attribute__((used)) static bool has_term(struct perf_record_stat_config *config,
       u64 tag, u64 val)
{
 unsigned i;

 for (i = 0; i < config->nr; i++) {
  if ((config->data[i].tag == tag) &&
      (config->data[i].val == val))
   return 1;
 }

 return 0;
}

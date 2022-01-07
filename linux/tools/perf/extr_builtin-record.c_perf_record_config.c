
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_cblocks; } ;
struct record {int no_buildid_cache; int no_buildid; TYPE_1__ opts; } ;


 scalar_t__ nr_cblocks_default ;
 int perf_default_config (char const*,char const*,void*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strtol (char const*,int *,int ) ;

__attribute__((used)) static int perf_record_config(const char *var, const char *value, void *cb)
{
 struct record *rec = cb;

 if (!strcmp(var, "record.build-id")) {
  if (!strcmp(value, "cache"))
   rec->no_buildid_cache = 0;
  else if (!strcmp(value, "no-cache"))
   rec->no_buildid_cache = 1;
  else if (!strcmp(value, "skip"))
   rec->no_buildid = 1;
  else
   return -1;
  return 0;
 }
 if (!strcmp(var, "record.call-graph")) {
  var = "call-graph.record-mode";
  return perf_default_config(var, value, cb);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_format; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int PERF_FORMAT_ID ;
 scalar_t__ STAT_RECORD ;

__attribute__((used)) static bool perf_evsel__should_store_id(struct evsel *counter)
{
 return STAT_RECORD || counter->core.attr.read_format & PERF_FORMAT_ID;
}

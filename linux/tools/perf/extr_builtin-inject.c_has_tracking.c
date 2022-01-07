
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ task; scalar_t__ comm; scalar_t__ mmap2; scalar_t__ mmap; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;



__attribute__((used)) static bool has_tracking(struct evsel *evsel)
{
 return evsel->core.attr.mmap || evsel->core.attr.mmap2 || evsel->core.attr.comm ||
        evsel->core.attr.task;
}

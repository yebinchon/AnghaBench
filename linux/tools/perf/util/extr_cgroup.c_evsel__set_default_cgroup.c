
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int * cgrp; } ;
struct cgroup {int dummy; } ;


 int * cgroup__get (struct cgroup*) ;

__attribute__((used)) static void evsel__set_default_cgroup(struct evsel *evsel, struct cgroup *cgroup)
{
 if (evsel->cgrp == ((void*)0))
  evsel->cgrp = cgroup__get(cgroup);
}

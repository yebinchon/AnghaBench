
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int refcnt; } ;


 int refcount_inc (int *) ;

struct cgroup *cgroup__get(struct cgroup *cgroup)
{
       if (cgroup)
  refcount_inc(&cgroup->refcnt);
       return cgroup;
}

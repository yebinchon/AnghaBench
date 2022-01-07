
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int refcnt; } ;


 int cgroup__delete (struct cgroup*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void cgroup__put(struct cgroup *cgrp)
{
 if (cgrp && refcount_dec_and_test(&cgrp->refcnt)) {
  cgroup__delete(cgrp);
 }
}

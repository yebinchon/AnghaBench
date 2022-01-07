
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cftype {char* name; scalar_t__ max_write_len; int flags; int * ss; int * kf_ops; } ;


 scalar_t__ PAGE_SIZE ;
 int __CFTYPE_NOT_ON_DFL ;
 int __CFTYPE_ONLY_ON_DFL ;
 int kfree (int *) ;

__attribute__((used)) static void cgroup_exit_cftypes(struct cftype *cfts)
{
 struct cftype *cft;

 for (cft = cfts; cft->name[0] != '\0'; cft++) {

  if (cft->max_write_len && cft->max_write_len != PAGE_SIZE)
   kfree(cft->kf_ops);
  cft->kf_ops = ((void*)0);
  cft->ss = ((void*)0);


  cft->flags &= ~(__CFTYPE_ONLY_ON_DFL | __CFTYPE_NOT_ON_DFL);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __SCHED_FEAT_NR ;
 int match_string (int ,int ,char*) ;
 int sched_feat_disable (int) ;
 int sched_feat_enable (int) ;
 int sched_feat_names ;
 scalar_t__ strncmp (char*,char*,int) ;
 unsigned long sysctl_sched_features ;

__attribute__((used)) static int sched_feat_set(char *cmp)
{
 int i;
 int neg = 0;

 if (strncmp(cmp, "NO_", 3) == 0) {
  neg = 1;
  cmp += 3;
 }

 i = match_string(sched_feat_names, __SCHED_FEAT_NR, cmp);
 if (i < 0)
  return i;

 if (neg) {
  sysctl_sched_features &= ~(1UL << i);
  sched_feat_disable(i);
 } else {
  sysctl_sched_features |= (1UL << i);
  sched_feat_enable(i);
 }

 return 0;
}

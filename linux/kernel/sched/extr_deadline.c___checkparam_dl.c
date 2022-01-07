
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_attr {int sched_flags; unsigned long long sched_deadline; unsigned long long sched_runtime; unsigned long long sched_period; } ;


 unsigned long long DL_SCALE ;
 int SCHED_FLAG_SUGOV ;

bool __checkparam_dl(const struct sched_attr *attr)
{

 if (attr->sched_flags & SCHED_FLAG_SUGOV)
  return 1;


 if (attr->sched_deadline == 0)
  return 0;





 if (attr->sched_runtime < (1ULL << DL_SCALE))
  return 0;





 if (attr->sched_deadline & (1ULL << 63) ||
     attr->sched_period & (1ULL << 63))
  return 0;


 if ((attr->sched_period != 0 &&
      attr->sched_period < attr->sched_deadline) ||
     attr->sched_deadline < attr->sched_runtime)
  return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;


 int free_cpumasks (struct cpuset*,int *) ;
 int kfree (struct cpuset*) ;

__attribute__((used)) static inline void free_cpuset(struct cpuset *cs)
{
 free_cpumasks(cs, ((void*)0));
 kfree(cs);
}

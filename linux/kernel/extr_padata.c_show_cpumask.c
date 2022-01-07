
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cpumask* pcpu; struct cpumask* cbcpu; } ;
struct padata_instance {int lock; TYPE_1__ cpumask; } ;
struct cpumask {int dummy; } ;
struct attribute {int name; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ PAGE_SIZE ;
 int cpumask_bits (struct cpumask*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_cpu_ids ;
 scalar_t__ snprintf (char*,scalar_t__,char*,int ,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t show_cpumask(struct padata_instance *pinst,
       struct attribute *attr, char *buf)
{
 struct cpumask *cpumask;
 ssize_t len;

 mutex_lock(&pinst->lock);
 if (!strcmp(attr->name, "serial_cpumask"))
  cpumask = pinst->cpumask.cbcpu;
 else
  cpumask = pinst->cpumask.pcpu;

 len = snprintf(buf, PAGE_SIZE, "%*pb\n",
         nr_cpu_ids, cpumask_bits(cpumask));
 mutex_unlock(&pinst->lock);
 return len < PAGE_SIZE ? len : -EINVAL;
}

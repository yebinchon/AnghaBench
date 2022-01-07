
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int dummy; } ;
struct attribute {int name; } ;
typedef size_t ssize_t ;
typedef int cpumask_var_t ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 int PADATA_CPU_PARALLEL ;
 int PADATA_CPU_SERIAL ;
 int alloc_cpumask_var (int *,int ) ;
 size_t bitmap_parse (char const*,size_t,int ,int ) ;
 int cpumask_bits (int ) ;
 int free_cpumask_var (int ) ;
 int nr_cpumask_bits ;
 size_t padata_set_cpumask (struct padata_instance*,int,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t store_cpumask(struct padata_instance *pinst,
        struct attribute *attr,
        const char *buf, size_t count)
{
 cpumask_var_t new_cpumask;
 ssize_t ret;
 int mask_type;

 if (!alloc_cpumask_var(&new_cpumask, GFP_KERNEL))
  return -ENOMEM;

 ret = bitmap_parse(buf, count, cpumask_bits(new_cpumask),
      nr_cpumask_bits);
 if (ret < 0)
  goto out;

 mask_type = !strcmp(attr->name, "serial_cpumask") ?
  PADATA_CPU_SERIAL : PADATA_CPU_PARALLEL;
 ret = padata_set_cpumask(pinst, mask_type, new_cpumask);
 if (!ret)
  ret = count;

out:
 free_cpumask_var(new_cpumask);
 return ret;
}

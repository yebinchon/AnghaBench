
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int snd_portid; int * attrs; } ;
typedef int cpumask_var_t ;


 int DEREGISTER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK ;
 int add_del_listener (int ,int ,int ) ;
 int alloc_cpumask_var (int *,int ) ;
 int free_cpumask_var (int ) ;
 int parse (int ,int ) ;

__attribute__((used)) static int cmd_attr_deregister_cpumask(struct genl_info *info)
{
 cpumask_var_t mask;
 int rc;

 if (!alloc_cpumask_var(&mask, GFP_KERNEL))
  return -ENOMEM;
 rc = parse(info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK], mask);
 if (rc < 0)
  goto out;
 rc = add_del_listener(info->snd_portid, mask, DEREGISTER);
out:
 free_cpumask_var(mask);
 return rc;
}

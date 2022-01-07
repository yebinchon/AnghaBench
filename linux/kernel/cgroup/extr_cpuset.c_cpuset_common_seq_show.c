
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cpuset {int subparts_cpus; int effective_mems; int effective_cpus; int mems_allowed; int cpus_allowed; } ;
typedef int cpuset_filetype_t ;
struct TYPE_2__ {int private; } ;


 int EINVAL ;





 int callback_lock ;
 int cpumask_pr_args (int ) ;
 struct cpuset* css_cs (int ) ;
 int nodemask_pr_args (int *) ;
 TYPE_1__* seq_cft (struct seq_file*) ;
 int seq_css (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cpuset_common_seq_show(struct seq_file *sf, void *v)
{
 struct cpuset *cs = css_cs(seq_css(sf));
 cpuset_filetype_t type = seq_cft(sf)->private;
 int ret = 0;

 spin_lock_irq(&callback_lock);

 switch (type) {
 case 132:
  seq_printf(sf, "%*pbl\n", cpumask_pr_args(cs->cpus_allowed));
  break;
 case 129:
  seq_printf(sf, "%*pbl\n", nodemask_pr_args(&cs->mems_allowed));
  break;
 case 131:
  seq_printf(sf, "%*pbl\n", cpumask_pr_args(cs->effective_cpus));
  break;
 case 130:
  seq_printf(sf, "%*pbl\n", nodemask_pr_args(&cs->effective_mems));
  break;
 case 128:
  seq_printf(sf, "%*pbl\n", cpumask_pr_args(cs->subparts_cpus));
  break;
 default:
  ret = -EINVAL;
 }

 spin_unlock_irq(&callback_lock);
 return ret;
}

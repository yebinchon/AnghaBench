
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itrace_synth_opts {scalar_t__ last_branch; scalar_t__ thread_stack; scalar_t__ callchain; scalar_t__ returns; scalar_t__ calls; scalar_t__ dont_decode; scalar_t__ errors; scalar_t__ pwr_events; scalar_t__ ptwrites; scalar_t__ transactions; scalar_t__ branches; scalar_t__ instructions; scalar_t__ inject; int set; } ;


 int pr_err (char*) ;

__attribute__((used)) static bool check_auxtrace_itrace(struct itrace_synth_opts *itops)
{
 bool ison = 0;

 if (!itops || !itops->set)
  return 1;
 ison = itops->inject || itops->instructions || itops->branches ||
  itops->transactions || itops->ptwrites ||
  itops->pwr_events || itops->errors ||
  itops->dont_decode || itops->calls || itops->returns ||
  itops->callchain || itops->thread_stack ||
  itops->last_branch;
 if (!ison)
  return 1;
 pr_err("Unsupported --itrace options specified\n");
 return 0;
}

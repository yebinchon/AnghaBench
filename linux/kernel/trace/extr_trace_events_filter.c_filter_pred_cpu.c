
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int val; int op; } ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int filter_pred_cpu(struct filter_pred *pred, void *event)
{
 int cpu, cmp;

 cpu = raw_smp_processor_id();
 cmp = pred->val;

 switch (pred->op) {
 case 133:
  return cpu == cmp;
 case 128:
  return cpu != cmp;
 case 129:
  return cpu < cmp;
 case 130:
  return cpu <= cmp;
 case 131:
  return cpu > cmp;
 case 132:
  return cpu >= cmp;
 default:
  return 0;
 }
}

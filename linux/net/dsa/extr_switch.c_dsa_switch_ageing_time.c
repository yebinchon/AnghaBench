
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct dsa_switch {unsigned int ageing_time_min; unsigned int ageing_time_max; TYPE_1__* ops; } ;
struct dsa_notifier_ageing_time_info {unsigned int ageing_time; struct switchdev_trans* trans; } ;
struct TYPE_2__ {int (* set_ageing_time ) (struct dsa_switch*,unsigned int) ;} ;


 int ERANGE ;
 unsigned int dsa_switch_fastest_ageing_time (struct dsa_switch*,unsigned int) ;
 int stub1 (struct dsa_switch*,unsigned int) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int dsa_switch_ageing_time(struct dsa_switch *ds,
      struct dsa_notifier_ageing_time_info *info)
{
 unsigned int ageing_time = info->ageing_time;
 struct switchdev_trans *trans = info->trans;

 if (switchdev_trans_ph_prepare(trans)) {
  if (ds->ageing_time_min && ageing_time < ds->ageing_time_min)
   return -ERANGE;
  if (ds->ageing_time_max && ageing_time > ds->ageing_time_max)
   return -ERANGE;
  return 0;
 }


 ageing_time = dsa_switch_fastest_ageing_time(ds, ageing_time);

 if (ds->ops->set_ageing_time)
  return ds->ops->set_ageing_time(ds, ageing_time);

 return 0;
}

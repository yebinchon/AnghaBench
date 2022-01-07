
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quota_format_type {int qf_fmt_id; int qf_owner; struct quota_format_type* qf_next; } ;
struct TYPE_2__ {int qm_fmt_id; int qm_mod_name; } ;


 int dq_list_lock ;
 TYPE_1__* module_names ;
 struct quota_format_type* quota_formats ;
 scalar_t__ request_module (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct quota_format_type *find_quota_format(int id)
{
 struct quota_format_type *actqf;

 spin_lock(&dq_list_lock);
 for (actqf = quota_formats; actqf && actqf->qf_fmt_id != id;
      actqf = actqf->qf_next)
  ;
 if (!actqf || !try_module_get(actqf->qf_owner)) {
  int qm;

  spin_unlock(&dq_list_lock);

  for (qm = 0; module_names[qm].qm_fmt_id &&
        module_names[qm].qm_fmt_id != id; qm++)
   ;
  if (!module_names[qm].qm_fmt_id ||
      request_module(module_names[qm].qm_mod_name))
   return ((void*)0);

  spin_lock(&dq_list_lock);
  for (actqf = quota_formats; actqf && actqf->qf_fmt_id != id;
       actqf = actqf->qf_next)
   ;
  if (actqf && !try_module_get(actqf->qf_owner))
   actqf = ((void*)0);
 }
 spin_unlock(&dq_list_lock);
 return actqf;
}

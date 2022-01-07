
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ippathid; int ipuser; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef int u8 ;
struct iucv_path {int pathid; } ;


 int EIO ;
 int IUCV_QUIESCE ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int ,int *,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int iucv_path_quiesce(struct iucv_path *path, u8 *userdata)
{
 union iucv_param *parm;
 int rc;

 local_bh_disable();
 if (cpumask_empty(&iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 parm = iucv_param[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 if (userdata)
  memcpy(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));
 parm->ctrl.ippathid = path->pathid;
 rc = iucv_call_b2f0(IUCV_QUIESCE, parm);
out:
 local_bh_enable();
 return rc;
}

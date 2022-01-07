
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipflags1; int ipmsglim; int ipuser; int ippathid; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef int u8 ;
struct iucv_path {int flags; int msglim; void* private; int pathid; } ;
struct iucv_handler {int dummy; } ;


 int EIO ;
 int IUCV_ACCEPT ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int ,int *,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int iucv_path_accept(struct iucv_path *path, struct iucv_handler *handler,
       u8 *userdata, void *private)
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
 parm->ctrl.ippathid = path->pathid;
 parm->ctrl.ipmsglim = path->msglim;
 if (userdata)
  memcpy(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));
 parm->ctrl.ipflags1 = path->flags;

 rc = iucv_call_b2f0(IUCV_ACCEPT, parm);
 if (!rc) {
  path->private = private;
  path->msglim = parm->ctrl.ipmsglim;
  path->flags = parm->ctrl.ipflags1;
 }
out:
 local_bh_enable();
 return rc;
}

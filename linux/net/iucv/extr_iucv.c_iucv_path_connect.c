
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ippathid; int ipflags1; int ipmsglim; int ipuser; int iptarget; int ipvmid; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef int u8 ;
struct iucv_path {size_t pathid; int list; void* private; struct iucv_handler* handler; int flags; int msglim; } ;
struct iucv_handler {int paths; } ;


 int ASCEBC (int ,int) ;
 int EBC_TOUPPER (int ,int) ;
 int EIO ;
 int IUCV_CONNECT ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 int iucv_cleanup_queue () ;
 int iucv_error_pathid ;
 scalar_t__ iucv_max_pathid ;
 union iucv_param** iucv_param ;
 struct iucv_path** iucv_path_table ;
 int iucv_sever_pathid (size_t,int ) ;
 int iucv_table_lock ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iucv_path_connect(struct iucv_path *path, struct iucv_handler *handler,
        u8 *userid, u8 *system, u8 *userdata,
        void *private)
{
 union iucv_param *parm;
 int rc;

 spin_lock_bh(&iucv_table_lock);
 iucv_cleanup_queue();
 if (cpumask_empty(&iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 parm = iucv_param[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 parm->ctrl.ipmsglim = path->msglim;
 parm->ctrl.ipflags1 = path->flags;
 if (userid) {
  memcpy(parm->ctrl.ipvmid, userid, sizeof(parm->ctrl.ipvmid));
  ASCEBC(parm->ctrl.ipvmid, sizeof(parm->ctrl.ipvmid));
  EBC_TOUPPER(parm->ctrl.ipvmid, sizeof(parm->ctrl.ipvmid));
 }
 if (system) {
  memcpy(parm->ctrl.iptarget, system,
         sizeof(parm->ctrl.iptarget));
  ASCEBC(parm->ctrl.iptarget, sizeof(parm->ctrl.iptarget));
  EBC_TOUPPER(parm->ctrl.iptarget, sizeof(parm->ctrl.iptarget));
 }
 if (userdata)
  memcpy(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));

 rc = iucv_call_b2f0(IUCV_CONNECT, parm);
 if (!rc) {
  if (parm->ctrl.ippathid < iucv_max_pathid) {
   path->pathid = parm->ctrl.ippathid;
   path->msglim = parm->ctrl.ipmsglim;
   path->flags = parm->ctrl.ipflags1;
   path->handler = handler;
   path->private = private;
   list_add_tail(&path->list, &handler->paths);
   iucv_path_table[path->pathid] = path;
  } else {
   iucv_sever_pathid(parm->ctrl.ippathid,
       iucv_error_pathid);
   rc = -EIO;
  }
 }
out:
 spin_unlock_bh(&iucv_table_lock);
 return rc;
}

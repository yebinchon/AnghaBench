
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ipbfln1f; int ipflags1; int iptrgcls; int ippathid; int ipmsgid; void* ipbfadr1; } ;
union iucv_param {TYPE_1__ db; } ;
typedef int u8 ;
typedef void* u32 ;
struct iucv_path {int pathid; } ;
struct iucv_message {int flags; int class; int id; } ;
typedef scalar_t__ addr_t ;


 int EIO ;
 int IUCV_IPFGMID ;
 int IUCV_IPFGPID ;
 int IUCV_IPRMDATA ;
 int IUCV_IPTRGCLS ;
 int IUCV_RECEIVE ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 int iucv_message_receive_iprmdata (struct iucv_path*,struct iucv_message*,int,void*,size_t,size_t*) ;
 union iucv_param** iucv_param ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int __iucv_message_receive(struct iucv_path *path, struct iucv_message *msg,
      u8 flags, void *buffer, size_t size, size_t *residual)
{
 union iucv_param *parm;
 int rc;

 if (msg->flags & IUCV_IPRMDATA)
  return iucv_message_receive_iprmdata(path, msg, flags,
           buffer, size, residual);
  if (cpumask_empty(&iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 parm = iucv_param[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 parm->db.ipbfadr1 = (u32)(addr_t) buffer;
 parm->db.ipbfln1f = (u32) size;
 parm->db.ipmsgid = msg->id;
 parm->db.ippathid = path->pathid;
 parm->db.iptrgcls = msg->class;
 parm->db.ipflags1 = (flags | IUCV_IPFGPID |
        IUCV_IPFGMID | IUCV_IPTRGCLS);
 rc = iucv_call_b2f0(IUCV_RECEIVE, parm);
 if (!rc || rc == 5) {
  msg->flags = parm->db.ipflags1;
  if (residual)
   *residual = parm->db.ipbfln1f;
 }
out:
 return rc;
}

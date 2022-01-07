
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ipmsgid; void* ipbfln2f; void* ipbfadr2; void* ipbfln1f; void* ipbfadr1; int ipmsgtag; void* ipsrccls; int iptrgcls; int ipflags1; int ippathid; } ;
struct TYPE_3__ {int iprmmsg; void* ipbfln2f; void* ipbfadr2; int ipmsgtag; void* ipsrccls; int iptrgcls; int ipflags1; int ippathid; } ;
union iucv_param {TYPE_2__ db; TYPE_1__ dpl; } ;
typedef int u8 ;
typedef void* u32 ;
struct iucv_path {int flags; int pathid; } ;
struct iucv_message {int id; int tag; int class; } ;
typedef scalar_t__ addr_t ;


 int EIO ;
 int IUCV_IPRMDATA ;
 int IUCV_SEND ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int ,void*,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int iucv_message_send2way(struct iucv_path *path, struct iucv_message *msg,
     u8 flags, u32 srccls, void *buffer, size_t size,
     void *answer, size_t asize, size_t *residual)
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
 if (flags & IUCV_IPRMDATA) {
  parm->dpl.ippathid = path->pathid;
  parm->dpl.ipflags1 = path->flags;
  parm->dpl.iptrgcls = msg->class;
  parm->dpl.ipsrccls = srccls;
  parm->dpl.ipmsgtag = msg->tag;
  parm->dpl.ipbfadr2 = (u32)(addr_t) answer;
  parm->dpl.ipbfln2f = (u32) asize;
  memcpy(parm->dpl.iprmmsg, buffer, 8);
 } else {
  parm->db.ippathid = path->pathid;
  parm->db.ipflags1 = path->flags;
  parm->db.iptrgcls = msg->class;
  parm->db.ipsrccls = srccls;
  parm->db.ipmsgtag = msg->tag;
  parm->db.ipbfadr1 = (u32)(addr_t) buffer;
  parm->db.ipbfln1f = (u32) size;
  parm->db.ipbfadr2 = (u32)(addr_t) answer;
  parm->db.ipbfln2f = (u32) asize;
 }
 rc = iucv_call_b2f0(IUCV_SEND, parm);
 if (!rc)
  msg->id = parm->db.ipmsgid;
out:
 local_bh_enable();
 return rc;
}

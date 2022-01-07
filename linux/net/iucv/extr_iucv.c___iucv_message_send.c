
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ipflags1; int ipmsgid; int ipmsgtag; void* ipsrccls; int iptrgcls; int ippathid; void* ipbfln1f; void* ipbfadr1; } ;
struct TYPE_3__ {int ipflags1; int iprmmsg; int ipmsgtag; void* ipsrccls; int iptrgcls; int ippathid; } ;
union iucv_param {TYPE_2__ db; TYPE_1__ dpl; } ;
typedef int u8 ;
typedef void* u32 ;
struct iucv_path {int pathid; } ;
struct iucv_message {int id; int tag; int class; } ;
typedef scalar_t__ addr_t ;


 int EIO ;
 int IUCV_IPNORPY ;
 int IUCV_IPRMDATA ;
 int IUCV_SEND ;
 scalar_t__ cpumask_empty (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param ;
 int memcpy (int ,void*,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int __iucv_message_send(struct iucv_path *path, struct iucv_message *msg,
        u8 flags, u32 srccls, void *buffer, size_t size)
{
 union iucv_param *parm;
 int rc;

 if (cpumask_empty(&iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 parm = iucv_param[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 if (flags & IUCV_IPRMDATA) {

  parm->dpl.ippathid = path->pathid;
  parm->dpl.ipflags1 = flags | IUCV_IPNORPY;
  parm->dpl.iptrgcls = msg->class;
  parm->dpl.ipsrccls = srccls;
  parm->dpl.ipmsgtag = msg->tag;
  memcpy(parm->dpl.iprmmsg, buffer, 8);
 } else {
  parm->db.ipbfadr1 = (u32)(addr_t) buffer;
  parm->db.ipbfln1f = (u32) size;
  parm->db.ippathid = path->pathid;
  parm->db.ipflags1 = flags | IUCV_IPNORPY;
  parm->db.iptrgcls = msg->class;
  parm->db.ipsrccls = srccls;
  parm->db.ipmsgtag = msg->tag;
 }
 rc = iucv_call_b2f0(IUCV_SEND, parm);
 if (!rc)
  msg->id = parm->db.ipmsgid;
out:
 return rc;
}

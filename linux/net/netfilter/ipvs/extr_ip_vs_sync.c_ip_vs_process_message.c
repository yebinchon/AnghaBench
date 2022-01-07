
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ver_size; } ;
union ip_vs_sync_conn {TYPE_2__ v4; } ;
struct TYPE_3__ {scalar_t__ syncid; } ;
struct netns_ipvs {TYPE_1__ bcfg; } ;
struct ip_vs_sync_mesg_v0 {int dummy; } ;
struct ip_vs_sync_mesg {scalar_t__ syncid; scalar_t__ version; scalar_t__ reserved; scalar_t__ spare; int nr_conns; int size; } ;
typedef int __u8 ;


 int IP_VS_DBG (int,char*,...) ;
 int IP_VS_ERR_RL (char*,...) ;
 int SVER_MASK ;
 int SVER_SHIFT ;
 scalar_t__ SYNC_PROTO_VER ;
 int ip_vs_proc_sync_conn (struct netns_ipvs*,int *,int *) ;
 int ip_vs_process_message_v0 (struct netns_ipvs*,int *,size_t const) ;
 int ntohs (int ) ;

__attribute__((used)) static void ip_vs_process_message(struct netns_ipvs *ipvs, __u8 *buffer,
      const size_t buflen)
{
 struct ip_vs_sync_mesg *m2 = (struct ip_vs_sync_mesg *)buffer;
 __u8 *p, *msg_end;
 int i, nr_conns;

 if (buflen < sizeof(struct ip_vs_sync_mesg_v0)) {
  IP_VS_DBG(2, "BACKUP, message header too short\n");
  return;
 }

 if (buflen != ntohs(m2->size)) {
  IP_VS_DBG(2, "BACKUP, bogus message size\n");
  return;
 }

 if (ipvs->bcfg.syncid != 0 && m2->syncid != ipvs->bcfg.syncid) {
  IP_VS_DBG(7, "BACKUP, Ignoring syncid = %d\n", m2->syncid);
  return;
 }

 if ((m2->version == SYNC_PROTO_VER) && (m2->reserved == 0)
     && (m2->spare == 0)) {

  msg_end = buffer + sizeof(struct ip_vs_sync_mesg);
  nr_conns = m2->nr_conns;

  for (i=0; i<nr_conns; i++) {
   union ip_vs_sync_conn *s;
   unsigned int size;
   int retc;

   p = msg_end;
   if (p + sizeof(s->v4) > buffer+buflen) {
    IP_VS_ERR_RL("BACKUP, Dropping buffer, to small\n");
    return;
   }
   s = (union ip_vs_sync_conn *)p;
   size = ntohs(s->v4.ver_size) & SVER_MASK;
   msg_end = p + size;

   if (msg_end > buffer+buflen) {
    IP_VS_ERR_RL("BACKUP, Dropping buffer, msg > buffer\n");
    return;
   }
   if (ntohs(s->v4.ver_size) >> SVER_SHIFT) {
    IP_VS_ERR_RL("BACKUP, Dropping buffer, Unknown version %d\n",
           ntohs(s->v4.ver_size) >> SVER_SHIFT);
    return;
   }

   retc = ip_vs_proc_sync_conn(ipvs, p, msg_end);
   if (retc < 0) {
    IP_VS_ERR_RL("BACKUP, Dropping buffer, Err: %d in decoding\n",
          retc);
    return;
   }

   msg_end = p + ((size + 3) & ~3);
  }
 } else {

  ip_vs_process_message_v0(ipvs, buffer, buflen);
  return;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int daddr; int vaddr; int caddr; void* timeout; void* fwmark; int dport; int vport; int cport; int protocol; void* state; void* flags; void* ver_size; int type; } ;
struct TYPE_7__ {int daddr; int vaddr; int caddr; } ;
union ip_vs_sync_conn {TYPE_6__ v4; TYPE_1__ v6; } ;
struct netns_ipvs {int sync_state; int sync_buff_lock; struct ipvs_master_sync_state* ms; } ;
struct ipvs_master_sync_state {struct ip_vs_sync_buff* sync_buff; } ;
struct ip_vs_sync_v6 {int dummy; } ;
struct ip_vs_sync_v4 {int dummy; } ;
struct ip_vs_sync_mesg {int nr_conns; void* size; scalar_t__ reserved; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_sync_buff {scalar_t__ head; scalar_t__ end; struct ip_vs_sync_mesg* mesg; } ;
struct ip_vs_seq {int dummy; } ;
struct TYPE_10__ {int ip; int in6; } ;
struct TYPE_9__ {int ip; int in6; } ;
struct TYPE_8__ {int ip; int in6; } ;
struct ip_vs_conn {int flags; int pe_data_len; scalar_t__ af; unsigned int state; int fwmark; int timeout; int in_pkts; struct ip_vs_conn* control; TYPE_5__* pe; int pe_data; int out_seq; int in_seq; TYPE_4__ daddr; TYPE_3__ vaddr; TYPE_2__ caddr; int dport; int vport; int cport; int protocol; int dest; } ;
typedef int __u8 ;
struct TYPE_11__ {int name; } ;


 scalar_t__ AF_INET6 ;
 int HZ ;
 int IPVS_OPT_PE_DATA ;
 int IPVS_OPT_PE_NAME ;
 int IPVS_OPT_SEQ_DATA ;
 int IP_VS_CONN_F_HASHED ;
 int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_CONN_F_SEQ_MASK ;
 int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_ERR_RL (char*) ;
 int IP_VS_PENAME_MAXLEN ;
 int IP_VS_STATE_MASTER ;
 int STYPE_F_INET6 ;
 unsigned int SVER_MASK ;
 int atomic_add_return (int,int *) ;
 int hton_seq (struct ip_vs_seq*,int *) ;
 void* htonl (int) ;
 void* htons (unsigned int) ;
 struct ip_vs_sync_buff* ip_vs_sync_buff_create (struct netns_ipvs*,unsigned int) ;
 int ip_vs_sync_conn_needed (struct netns_ipvs*,struct ip_vs_conn*,int) ;
 int ip_vs_sync_conn_v0 (struct netns_ipvs*,struct ip_vs_conn*,int) ;
 int memcpy (int *,int ,unsigned int) ;
 unsigned int ntohs (void*) ;
 int pr_err (char*) ;
 int sb_queue_tail (struct netns_ipvs*,struct ipvs_master_sync_state*) ;
 int select_master_thread_id (struct netns_ipvs*,struct ip_vs_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned int strnlen (int ,int ) ;
 int sysctl_sync_threshold (struct netns_ipvs*) ;
 scalar_t__ sysctl_sync_ver (struct netns_ipvs*) ;

void ip_vs_sync_conn(struct netns_ipvs *ipvs, struct ip_vs_conn *cp, int pkts)
{
 struct ip_vs_sync_mesg *m;
 union ip_vs_sync_conn *s;
 struct ip_vs_sync_buff *buff;
 struct ipvs_master_sync_state *ms;
 int id;
 __u8 *p;
 unsigned int len, pe_name_len, pad;


 if (sysctl_sync_ver(ipvs) == 0) {
  ip_vs_sync_conn_v0(ipvs, cp, pkts);
  return;
 }

 if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
  goto control;
sloop:
 if (!ip_vs_sync_conn_needed(ipvs, cp, pkts))
  goto control;


 pe_name_len = 0;
 if (cp->pe_data_len) {
  if (!cp->pe_data || !cp->dest) {
   IP_VS_ERR_RL("SYNC, connection pe_data invalid\n");
   return;
  }
  pe_name_len = strnlen(cp->pe->name, IP_VS_PENAME_MAXLEN);
 }

 spin_lock_bh(&ipvs->sync_buff_lock);
 if (!(ipvs->sync_state & IP_VS_STATE_MASTER)) {
  spin_unlock_bh(&ipvs->sync_buff_lock);
  return;
 }

 id = select_master_thread_id(ipvs, cp);
 ms = &ipvs->ms[id];






  len = sizeof(struct ip_vs_sync_v4);

 if (cp->flags & IP_VS_CONN_F_SEQ_MASK)
  len += sizeof(struct ip_vs_sync_conn_options) + 2;

 if (cp->pe_data_len)
  len += cp->pe_data_len + 2;
 if (pe_name_len)
  len += pe_name_len + 2;


 pad = 0;
 buff = ms->sync_buff;
 if (buff) {
  m = buff->mesg;
  pad = (4 - (size_t) buff->head) & 3;

  if (buff->head + len + pad > buff->end || m->reserved) {
   sb_queue_tail(ipvs, ms);
   ms->sync_buff = ((void*)0);
   buff = ((void*)0);
   pad = 0;
  }
 }

 if (!buff) {
  buff = ip_vs_sync_buff_create(ipvs, len);
  if (!buff) {
   spin_unlock_bh(&ipvs->sync_buff_lock);
   pr_err("ip_vs_sync_buff_create failed.\n");
   return;
  }
  ms->sync_buff = buff;
  m = buff->mesg;
 }

 p = buff->head;
 buff->head += pad + len;
 m->size = htons(ntohs(m->size) + pad + len);

 while (pad--)
  *(p++) = 0;

 s = (union ip_vs_sync_conn *)p;


 s->v4.type = (cp->af == AF_INET6 ? STYPE_F_INET6 : 0);
 s->v4.ver_size = htons(len & SVER_MASK);
 s->v4.flags = htonl(cp->flags & ~IP_VS_CONN_F_HASHED);
 s->v4.state = htons(cp->state);
 s->v4.protocol = cp->protocol;
 s->v4.cport = cp->cport;
 s->v4.vport = cp->vport;
 s->v4.dport = cp->dport;
 s->v4.fwmark = htonl(cp->fwmark);
 s->v4.timeout = htonl(cp->timeout / HZ);
 m->nr_conns++;
 {
  p += sizeof(struct ip_vs_sync_v4);
  s->v4.caddr = cp->caddr.ip;
  s->v4.vaddr = cp->vaddr.ip;
  s->v4.daddr = cp->daddr.ip;
 }
 if (cp->flags & IP_VS_CONN_F_SEQ_MASK) {
  *(p++) = IPVS_OPT_SEQ_DATA;
  *(p++) = sizeof(struct ip_vs_sync_conn_options);
  hton_seq((struct ip_vs_seq *)p, &cp->in_seq);
  p += sizeof(struct ip_vs_seq);
  hton_seq((struct ip_vs_seq *)p, &cp->out_seq);
  p += sizeof(struct ip_vs_seq);
 }

 if (cp->pe_data_len && cp->pe_data) {
  *(p++) = IPVS_OPT_PE_DATA;
  *(p++) = cp->pe_data_len;
  memcpy(p, cp->pe_data, cp->pe_data_len);
  p += cp->pe_data_len;
  if (pe_name_len) {

   *(p++) = IPVS_OPT_PE_NAME;
   *(p++) = pe_name_len;
   memcpy(p, cp->pe->name, pe_name_len);
   p += pe_name_len;
  }
 }

 spin_unlock_bh(&ipvs->sync_buff_lock);

control:

 cp = cp->control;
 if (!cp)
  return;
 if (cp->flags & IP_VS_CONN_F_TEMPLATE)
  pkts = atomic_add_return(1, &cp->in_pkts);
 else
  pkts = sysctl_sync_threshold(ipvs);
 goto sloop;
}

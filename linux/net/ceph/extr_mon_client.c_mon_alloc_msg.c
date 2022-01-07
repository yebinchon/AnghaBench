
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg_header {int tid; int front_len; int type; } ;
struct ceph_msg {int front_alloc_len; } ;
struct ceph_mon_client {int m_auth_reply; int m_subscribe_ack; } ;
struct TYPE_2__ {int num; scalar_t__ type; } ;
struct ceph_connection {TYPE_1__ peer_name; struct ceph_mon_client* private; } ;
 int GFP_NOFS ;
 struct ceph_msg* ceph_msg_get (int ) ;
 struct ceph_msg* ceph_msg_new (int,int,int ,int) ;
 int ceph_msg_put (struct ceph_msg*) ;
 struct ceph_msg* get_generic_reply (struct ceph_connection*,struct ceph_msg_header*,int*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int pr_info (char*,int) ;
 int pr_warn (char*,int,int,unsigned int,int ) ;

__attribute__((used)) static struct ceph_msg *mon_alloc_msg(struct ceph_connection *con,
          struct ceph_msg_header *hdr,
          int *skip)
{
 struct ceph_mon_client *monc = con->private;
 int type = le16_to_cpu(hdr->type);
 int front_len = le32_to_cpu(hdr->front_len);
 struct ceph_msg *m = ((void*)0);

 *skip = 0;

 switch (type) {
 case 130:
  m = ceph_msg_get(monc->m_subscribe_ack);
  break;
 case 128:
 case 133:
  return get_generic_reply(con, hdr, skip);
 case 136:
  m = ceph_msg_get(monc->m_auth_reply);
  break;
 case 132:
  if (le64_to_cpu(hdr->tid) != 0)
   return get_generic_reply(con, hdr, skip);







 case 131:
 case 134:
 case 129:
 case 135:
  m = ceph_msg_new(type, front_len, GFP_NOFS, 0);
  if (!m)
   return ((void*)0);
  break;
 }

 if (!m) {
  pr_info("alloc_msg unknown type %d\n", type);
  *skip = 1;
 } else if (front_len > m->front_alloc_len) {
  pr_warn("mon_alloc_msg front %d > prealloc %d (%u#%llu)\n",
   front_len, m->front_alloc_len,
   (unsigned int)con->peer_name.type,
   le64_to_cpu(con->peer_name.num));
  ceph_msg_put(m);
  m = ceph_msg_new(type, front_len, GFP_NOFS, 0);
 }

 return m;
}

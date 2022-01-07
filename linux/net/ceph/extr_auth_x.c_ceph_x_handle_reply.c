
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {int session_key; } ;
struct ceph_x_server_challenge {int server_challenge; } ;
struct ceph_x_reply_header {int result; int op; } ;
struct ceph_x_info {int starting; int have_keys; int secret; int server_challenge; } ;
struct ceph_auth_client {int want_keys; struct ceph_x_info* private; } ;




 int CEPH_ENTITY_TYPE_AUTH ;
 int EAGAIN ;
 int EINVAL ;
 int IS_ERR (struct ceph_x_ticket_handler*) ;
 int PTR_ERR (struct ceph_x_ticket_handler*) ;
 int ceph_x_proc_ticket_reply (struct ceph_auth_client*,int *,void*,void*) ;
 int dout (char*,int,...) ;
 struct ceph_x_ticket_handler* get_ticket_handler (struct ceph_auth_client*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int ceph_x_handle_reply(struct ceph_auth_client *ac, int result,
          void *buf, void *end)
{
 struct ceph_x_info *xi = ac->private;
 struct ceph_x_reply_header *head = buf;
 struct ceph_x_ticket_handler *th;
 int len = end - buf;
 int op;
 int ret;

 if (result)
  return result;

 if (xi->starting) {

  struct ceph_x_server_challenge *sc = buf;

  if (len != sizeof(*sc))
   return -EINVAL;
  xi->server_challenge = le64_to_cpu(sc->server_challenge);
  dout("handle_reply got server challenge %llx\n",
       xi->server_challenge);
  xi->starting = 0;
  xi->have_keys &= ~CEPH_ENTITY_TYPE_AUTH;
  return -EAGAIN;
 }

 op = le16_to_cpu(head->op);
 result = le32_to_cpu(head->result);
 dout("handle_reply op %d result %d\n", op, result);
 switch (op) {
 case 129:

  ret = ceph_x_proc_ticket_reply(ac, &xi->secret,
            buf + sizeof(*head), end);
  break;

 case 128:
  th = get_ticket_handler(ac, CEPH_ENTITY_TYPE_AUTH);
  if (IS_ERR(th))
   return PTR_ERR(th);
  ret = ceph_x_proc_ticket_reply(ac, &th->session_key,
            buf + sizeof(*head), end);
  break;

 default:
  return -EINVAL;
 }
 if (ret)
  return ret;
 if (ac->want_keys == xi->have_keys)
  return 0;
 return -EAGAIN;
}

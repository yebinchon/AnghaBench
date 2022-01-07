
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_mon_client {TYPE_2__* client; } ;
struct ceph_connection {struct ceph_mon_client* private; } ;
struct TYPE_4__ {int (* extra_mon_dispatch ) (TYPE_2__*,struct ceph_msg*) ;int osdc; } ;
 int ceph_monc_handle_map (struct ceph_mon_client*,struct ceph_msg*) ;
 int ceph_msg_put (struct ceph_msg*) ;
 int ceph_msg_type_name (int) ;
 int ceph_osdc_handle_map (int *,struct ceph_msg*) ;
 int handle_auth_reply (struct ceph_mon_client*,struct ceph_msg*) ;
 int handle_command_ack (struct ceph_mon_client*,struct ceph_msg*) ;
 int handle_get_version_reply (struct ceph_mon_client*,struct ceph_msg*) ;
 int handle_statfs_reply (struct ceph_mon_client*,struct ceph_msg*) ;
 int handle_subscribe_ack (struct ceph_mon_client*,struct ceph_msg*) ;
 int le16_to_cpu (int ) ;
 int pr_err (char*,int,int ) ;
 int stub1 (TYPE_2__*,struct ceph_msg*) ;

__attribute__((used)) static void dispatch(struct ceph_connection *con, struct ceph_msg *msg)
{
 struct ceph_mon_client *monc = con->private;
 int type = le16_to_cpu(msg->hdr.type);

 if (!monc)
  return;

 switch (type) {
 case 134:
  handle_auth_reply(monc, msg);
  break;

 case 130:
  handle_subscribe_ack(monc, msg);
  break;

 case 128:
  handle_statfs_reply(monc, msg);
  break;

 case 132:
  handle_get_version_reply(monc, msg);
  break;

 case 133:
  handle_command_ack(monc, msg);
  break;

 case 131:
  ceph_monc_handle_map(monc, msg);
  break;

 case 129:
  ceph_osdc_handle_map(&monc->client->osdc, msg);
  break;

 default:

  if (monc->client->extra_mon_dispatch &&
      monc->client->extra_mon_dispatch(monc->client, msg) == 0)
   break;

  pr_err("received unknown message type %d %s\n", type,
         ceph_msg_type_name(type));
 }
 ceph_msg_put(msg);
}

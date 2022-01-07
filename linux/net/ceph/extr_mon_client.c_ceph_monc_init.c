
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ceph_mon_subscribe_ack {int dummy; } ;
struct ceph_mon_client {int cur_mon; int had_a_connection; int hunt_mult; int * monmap; TYPE_2__* auth; void* m_subscribe_ack; void* m_subscribe; void* m_auth_reply; int fs_cluster_id; scalar_t__ last_tid; int generic_request_tree; int delayed_work; struct ceph_client* client; int con; void* m_auth; scalar_t__ pending_auth; int mutex; } ;
struct ceph_client {int msgr; TYPE_1__* options; } ;
struct TYPE_7__ {int want_keys; } ;
struct TYPE_6__ {int key; int name; } ;


 int CEPH_ENTITY_TYPE_AUTH ;
 int CEPH_ENTITY_TYPE_MDS ;
 int CEPH_ENTITY_TYPE_MON ;
 int CEPH_ENTITY_TYPE_OSD ;
 int CEPH_FS_CLUSTER_ID_NONE ;
 int CEPH_MSG_AUTH ;
 int CEPH_MSG_AUTH_REPLY ;
 int CEPH_MSG_MON_SUBSCRIBE ;
 int CEPH_MSG_MON_SUBSCRIBE_ACK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int RB_ROOT ;
 int build_initial_monmap (struct ceph_mon_client*) ;
 int ceph_auth_destroy (TYPE_2__*) ;
 TYPE_2__* ceph_auth_init (int ,int ) ;
 int ceph_con_init (int *,struct ceph_mon_client*,int *,int *) ;
 void* ceph_msg_new (int ,int,int ,int) ;
 int ceph_msg_put (void*) ;
 int delayed_work ;
 int dout (char*) ;
 int kfree (int *) ;
 int memset (struct ceph_mon_client*,int ,int) ;
 int mon_con_ops ;
 int mutex_init (int *) ;

int ceph_monc_init(struct ceph_mon_client *monc, struct ceph_client *cl)
{
 int err = 0;

 dout("init\n");
 memset(monc, 0, sizeof(*monc));
 monc->client = cl;
 monc->monmap = ((void*)0);
 mutex_init(&monc->mutex);

 err = build_initial_monmap(monc);
 if (err)
  goto out;



 monc->auth = ceph_auth_init(cl->options->name,
        cl->options->key);
 if (IS_ERR(monc->auth)) {
  err = PTR_ERR(monc->auth);
  goto out_monmap;
 }
 monc->auth->want_keys =
  CEPH_ENTITY_TYPE_AUTH | CEPH_ENTITY_TYPE_MON |
  CEPH_ENTITY_TYPE_OSD | CEPH_ENTITY_TYPE_MDS;


 err = -ENOMEM;
 monc->m_subscribe_ack = ceph_msg_new(CEPH_MSG_MON_SUBSCRIBE_ACK,
         sizeof(struct ceph_mon_subscribe_ack),
         GFP_KERNEL, 1);
 if (!monc->m_subscribe_ack)
  goto out_auth;

 monc->m_subscribe = ceph_msg_new(CEPH_MSG_MON_SUBSCRIBE, 128,
      GFP_KERNEL, 1);
 if (!monc->m_subscribe)
  goto out_subscribe_ack;

 monc->m_auth_reply = ceph_msg_new(CEPH_MSG_AUTH_REPLY, 4096,
       GFP_KERNEL, 1);
 if (!monc->m_auth_reply)
  goto out_subscribe;

 monc->m_auth = ceph_msg_new(CEPH_MSG_AUTH, 4096, GFP_KERNEL, 1);
 monc->pending_auth = 0;
 if (!monc->m_auth)
  goto out_auth_reply;

 ceph_con_init(&monc->con, monc, &mon_con_ops,
        &monc->client->msgr);

 monc->cur_mon = -1;
 monc->had_a_connection = 0;
 monc->hunt_mult = 1;

 INIT_DELAYED_WORK(&monc->delayed_work, delayed_work);
 monc->generic_request_tree = RB_ROOT;
 monc->last_tid = 0;

 monc->fs_cluster_id = CEPH_FS_CLUSTER_ID_NONE;

 return 0;

out_auth_reply:
 ceph_msg_put(monc->m_auth_reply);
out_subscribe:
 ceph_msg_put(monc->m_subscribe);
out_subscribe_ack:
 ceph_msg_put(monc->m_subscribe_ack);
out_auth:
 ceph_auth_destroy(monc->auth);
out_monmap:
 kfree(monc->monmap);
out:
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ceph_mon_generic_request {TYPE_2__* request; void* reply; } ;
struct TYPE_7__ {scalar_t__ session_mon_tid; int session_mon; scalar_t__ have_version; } ;
struct ceph_mon_command {void* str_len; int str; void* num_strs; int fsid; TYPE_3__ monhdr; } ;
struct ceph_mon_client {int client; int mutex; TYPE_4__* monmap; } ;
struct ceph_entity_addr {int nonce; int in_addr; } ;
struct TYPE_8__ {int fsid; } ;
struct TYPE_5__ {struct ceph_mon_command* iov_base; } ;
struct TYPE_6__ {TYPE_1__ front; } ;


 int CEPH_MSG_MON_COMMAND ;
 int CEPH_MSG_MON_COMMAND_ACK ;
 int ENOMEM ;
 int GFP_NOIO ;
 struct ceph_mon_generic_request* alloc_generic_request (struct ceph_mon_client*,int ) ;
 void* ceph_msg_new (int ,int,int ,int) ;
 int ceph_wait_for_latest_osdmap (int ,int ) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;
 int register_generic_request (struct ceph_mon_generic_request*) ;
 int send_generic_request (struct ceph_mon_client*,struct ceph_mon_generic_request*) ;
 int sprintf (int ,char*,int *,int) ;
 int wait_generic_request (struct ceph_mon_generic_request*) ;

int ceph_monc_blacklist_add(struct ceph_mon_client *monc,
       struct ceph_entity_addr *client_addr)
{
 struct ceph_mon_generic_request *req;
 struct ceph_mon_command *h;
 int ret = -ENOMEM;
 int len;

 req = alloc_generic_request(monc, GFP_NOIO);
 if (!req)
  goto out;

 req->request = ceph_msg_new(CEPH_MSG_MON_COMMAND, 256, GFP_NOIO, 1);
 if (!req->request)
  goto out;

 req->reply = ceph_msg_new(CEPH_MSG_MON_COMMAND_ACK, 512, GFP_NOIO,
      1);
 if (!req->reply)
  goto out;

 mutex_lock(&monc->mutex);
 register_generic_request(req);
 h = req->request->front.iov_base;
 h->monhdr.have_version = 0;
 h->monhdr.session_mon = cpu_to_le16(-1);
 h->monhdr.session_mon_tid = 0;
 h->fsid = monc->monmap->fsid;
 h->num_strs = cpu_to_le32(1);
 len = sprintf(h->str, "{ \"prefix\": \"osd blacklist\", 		                 \"blacklistop\": \"add\", 				 \"addr\": \"%pISpc/%u\" }",


        &client_addr->in_addr, le32_to_cpu(client_addr->nonce));
 h->str_len = cpu_to_le32(len);
 send_generic_request(monc, req);
 mutex_unlock(&monc->mutex);

 ret = wait_generic_request(req);
 if (!ret)






  ret = ceph_wait_for_latest_osdmap(monc->client, 0);

out:
 put_generic_request(req);
 return ret;
}

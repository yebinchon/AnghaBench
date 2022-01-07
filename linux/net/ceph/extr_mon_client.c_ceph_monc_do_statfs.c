
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


typedef scalar_t__ u64 ;
struct ceph_statfs {int dummy; } ;
struct TYPE_11__ {scalar_t__ session_mon_tid; void* session_mon; scalar_t__ have_version; } ;
struct ceph_mon_statfs {int contains_data_pool; int data_pool; int fsid; TYPE_5__ monhdr; } ;
struct TYPE_7__ {struct ceph_statfs* st; } ;
struct ceph_mon_generic_request {TYPE_4__* request; TYPE_1__ u; void* reply; } ;
struct ceph_mon_client {int mutex; TYPE_6__* monmap; } ;
struct TYPE_12__ {int fsid; } ;
struct TYPE_9__ {struct ceph_mon_statfs* iov_base; } ;
struct TYPE_8__ {void* version; } ;
struct TYPE_10__ {TYPE_3__ front; TYPE_2__ hdr; } ;


 int CEPH_MSG_STATFS ;
 int CEPH_MSG_STATFS_REPLY ;
 scalar_t__ CEPH_NOPOOL ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct ceph_mon_generic_request* alloc_generic_request (struct ceph_mon_client*,int ) ;
 void* ceph_msg_new (int ,int,int ,int) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;
 int register_generic_request (struct ceph_mon_generic_request*) ;
 int send_generic_request (struct ceph_mon_client*,struct ceph_mon_generic_request*) ;
 int wait_generic_request (struct ceph_mon_generic_request*) ;

int ceph_monc_do_statfs(struct ceph_mon_client *monc, u64 data_pool,
   struct ceph_statfs *buf)
{
 struct ceph_mon_generic_request *req;
 struct ceph_mon_statfs *h;
 int ret = -ENOMEM;

 req = alloc_generic_request(monc, GFP_NOFS);
 if (!req)
  goto out;

 req->request = ceph_msg_new(CEPH_MSG_STATFS, sizeof(*h), GFP_NOFS,
        1);
 if (!req->request)
  goto out;

 req->reply = ceph_msg_new(CEPH_MSG_STATFS_REPLY, 64, GFP_NOFS, 1);
 if (!req->reply)
  goto out;

 req->u.st = buf;
 req->request->hdr.version = cpu_to_le16(2);

 mutex_lock(&monc->mutex);
 register_generic_request(req);

 h = req->request->front.iov_base;
 h->monhdr.have_version = 0;
 h->monhdr.session_mon = cpu_to_le16(-1);
 h->monhdr.session_mon_tid = 0;
 h->fsid = monc->monmap->fsid;
 h->contains_data_pool = (data_pool != CEPH_NOPOOL);
 h->data_pool = cpu_to_le64(data_pool);
 send_generic_request(monc, req);
 mutex_unlock(&monc->mutex);

 ret = wait_generic_request(req);
out:
 put_generic_request(req);
 return ret;
}

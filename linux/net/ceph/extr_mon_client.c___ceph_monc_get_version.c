
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ceph_mon_generic_request {int tid; TYPE_2__* request; int private_data; int complete_cb; void* reply; } ;
struct ceph_mon_client {int mutex; } ;
typedef int ceph_monc_callback_t ;
struct TYPE_3__ {void* iov_base; } ;
struct TYPE_4__ {int front_alloc_len; TYPE_1__ front; } ;


 int CEPH_MSG_MON_GET_VERSION ;
 int CEPH_MSG_MON_GET_VERSION_REPLY ;
 int ENOMEM ;
 struct ceph_mon_generic_request* ERR_PTR (int ) ;
 int GFP_NOIO ;
 int WARN_ON (int) ;
 struct ceph_mon_generic_request* alloc_generic_request (struct ceph_mon_client*,int ) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_string (void**,void* const,char const*,int) ;
 void* ceph_msg_new (int ,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;
 int register_generic_request (struct ceph_mon_generic_request*) ;
 int send_generic_request (struct ceph_mon_client*,struct ceph_mon_generic_request*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct ceph_mon_generic_request *
__ceph_monc_get_version(struct ceph_mon_client *monc, const char *what,
   ceph_monc_callback_t cb, u64 private_data)
{
 struct ceph_mon_generic_request *req;

 req = alloc_generic_request(monc, GFP_NOIO);
 if (!req)
  goto err_put_req;

 req->request = ceph_msg_new(CEPH_MSG_MON_GET_VERSION,
        sizeof(u64) + sizeof(u32) + strlen(what),
        GFP_NOIO, 1);
 if (!req->request)
  goto err_put_req;

 req->reply = ceph_msg_new(CEPH_MSG_MON_GET_VERSION_REPLY, 32, GFP_NOIO,
      1);
 if (!req->reply)
  goto err_put_req;

 req->complete_cb = cb;
 req->private_data = private_data;

 mutex_lock(&monc->mutex);
 register_generic_request(req);
 {
  void *p = req->request->front.iov_base;
  void *const end = p + req->request->front_alloc_len;

  ceph_encode_64(&p, req->tid);
  ceph_encode_string(&p, end, what, strlen(what));
  WARN_ON(p != end);
 }
 send_generic_request(monc, req);
 mutex_unlock(&monc->mutex);

 return req;

err_put_req:
 put_generic_request(req);
 return ERR_PTR(-ENOMEM);
}

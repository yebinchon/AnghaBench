
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_monmap {int epoch; int fsid; } ;
struct ceph_mon_client {int mutex; struct ceph_monmap* monmap; struct ceph_client* client; } ;
struct TYPE_4__ {struct ceph_monmap* monmap; } ;
struct ceph_client {int have_fsid; int auth_wq; TYPE_2__ monc; } ;


 int CEPH_SUB_MONMAP ;
 scalar_t__ IS_ERR (struct ceph_monmap*) ;
 scalar_t__ PTR_ERR (struct ceph_monmap*) ;
 int __ceph_monc_got_map (struct ceph_mon_client*,int ,int ) ;
 scalar_t__ ceph_check_fsid (struct ceph_client*,int *) ;
 struct ceph_monmap* ceph_monmap_decode (void*,void*) ;
 int ceph_msg_dump (struct ceph_msg*) ;
 int dout (char*) ;
 int kfree (struct ceph_monmap*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ceph_monc_handle_map(struct ceph_mon_client *monc,
     struct ceph_msg *msg)
{
 struct ceph_client *client = monc->client;
 struct ceph_monmap *monmap = ((void*)0), *old = monc->monmap;
 void *p, *end;

 mutex_lock(&monc->mutex);

 dout("handle_monmap\n");
 p = msg->front.iov_base;
 end = p + msg->front.iov_len;

 monmap = ceph_monmap_decode(p, end);
 if (IS_ERR(monmap)) {
  pr_err("problem decoding monmap, %d\n",
         (int)PTR_ERR(monmap));
  ceph_msg_dump(msg);
  goto out;
 }

 if (ceph_check_fsid(monc->client, &monmap->fsid) < 0) {
  kfree(monmap);
  goto out;
 }

 client->monc.monmap = monmap;
 kfree(old);

 __ceph_monc_got_map(monc, CEPH_SUB_MONMAP, monc->monmap->epoch);
 client->have_fsid = 1;

out:
 mutex_unlock(&monc->mutex);
 wake_up_all(&client->auth_wq);
}

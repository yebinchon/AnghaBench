
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gss_upcall_msg {int service_name; struct gss_auth* auth; int uid; int count; int waitqueue; int rpc_waitqueue; int list; int pipe; } ;
struct gss_auth {int net; int kref; TYPE_1__** gss_pipe; } ;
typedef int kuid_t ;
struct TYPE_2__ {int pipe; } ;


 int ENOMEM ;
 struct gss_upcall_msg* ERR_PTR (int) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int get_pipe_version (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct gss_upcall_msg*) ;
 int kref_get (int *) ;
 int kstrdup_const (char const*,int ) ;
 struct gss_upcall_msg* kzalloc (int,int ) ;
 int put_pipe_version (int ) ;
 int refcount_set (int *,int) ;
 int rpc_init_wait_queue (int *,char*) ;

__attribute__((used)) static struct gss_upcall_msg *
gss_alloc_msg(struct gss_auth *gss_auth,
  kuid_t uid, const char *service_name)
{
 struct gss_upcall_msg *gss_msg;
 int vers;
 int err = -ENOMEM;

 gss_msg = kzalloc(sizeof(*gss_msg), GFP_NOFS);
 if (gss_msg == ((void*)0))
  goto err;
 vers = get_pipe_version(gss_auth->net);
 err = vers;
 if (err < 0)
  goto err_free_msg;
 gss_msg->pipe = gss_auth->gss_pipe[vers]->pipe;
 INIT_LIST_HEAD(&gss_msg->list);
 rpc_init_wait_queue(&gss_msg->rpc_waitqueue, "RPCSEC_GSS upcall waitq");
 init_waitqueue_head(&gss_msg->waitqueue);
 refcount_set(&gss_msg->count, 1);
 gss_msg->uid = uid;
 gss_msg->auth = gss_auth;
 kref_get(&gss_auth->kref);
 if (service_name) {
  gss_msg->service_name = kstrdup_const(service_name, GFP_NOFS);
  if (!gss_msg->service_name) {
   err = -ENOMEM;
   goto err_put_pipe_version;
  }
 }
 return gss_msg;
err_put_pipe_version:
 put_pipe_version(gss_auth->net);
err_free_msg:
 kfree(gss_msg);
err:
 return ERR_PTR(err);
}

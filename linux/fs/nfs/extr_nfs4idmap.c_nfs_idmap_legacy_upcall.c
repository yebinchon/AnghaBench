
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_msg {int dummy; } ;
struct request_key_auth {struct key* target_key; } ;
struct key {int description; } ;
struct idmap_msg {int dummy; } ;
struct idmap_legacy_upcalldata {int authkey; struct idmap* idmap; struct idmap_msg idmap_msg; struct rpc_pipe_msg pipe_msg; } ;
struct idmap {int idmap_pipe; } ;


 int EAGAIN ;
 int ENOKEY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int complete_request_key (struct key*,int) ;
 struct request_key_auth* get_request_key_auth (struct key*) ;
 int key_get (struct key*) ;
 int kfree (struct idmap_legacy_upcalldata*) ;
 struct idmap_legacy_upcalldata* kzalloc (int,int ) ;
 int nfs_idmap_abort_pipe_upcall (struct idmap*,int) ;
 int nfs_idmap_prepare_message (int ,struct idmap*,struct idmap_msg*,struct rpc_pipe_msg*) ;
 int nfs_idmap_prepare_pipe_upcall (struct idmap*,struct idmap_legacy_upcalldata*) ;
 int rpc_queue_upcall (int ,struct rpc_pipe_msg*) ;

__attribute__((used)) static int nfs_idmap_legacy_upcall(struct key *authkey, void *aux)
{
 struct idmap_legacy_upcalldata *data;
 struct request_key_auth *rka = get_request_key_auth(authkey);
 struct rpc_pipe_msg *msg;
 struct idmap_msg *im;
 struct idmap *idmap = (struct idmap *)aux;
 struct key *key = rka->target_key;
 int ret = -ENOKEY;

 if (!aux)
  goto out1;


 ret = -ENOMEM;
 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  goto out1;

 msg = &data->pipe_msg;
 im = &data->idmap_msg;
 data->idmap = idmap;
 data->authkey = key_get(authkey);

 ret = nfs_idmap_prepare_message(key->description, idmap, im, msg);
 if (ret < 0)
  goto out2;

 ret = -EAGAIN;
 if (!nfs_idmap_prepare_pipe_upcall(idmap, data))
  goto out2;

 ret = rpc_queue_upcall(idmap->idmap_pipe, msg);
 if (ret < 0)
  nfs_idmap_abort_pipe_upcall(idmap, ret);

 return ret;
out2:
 kfree(data);
out1:
 complete_request_key(authkey, ret);
 return ret;
}

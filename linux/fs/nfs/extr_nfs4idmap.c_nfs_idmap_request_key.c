
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int flags; } ;
struct idmap {int idmap_mutex; TYPE_1__* cred; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * user_ns; } ;


 int EAGAIN ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_FLAG_ROOT_CAN_INVAL ;
 int init_user_ns ;
 int key_type_id_resolver ;
 int key_type_id_resolver_legacy ;
 int kfree (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_idmap_get_desc (char const*,size_t,char const*,int ,char**) ;
 struct key* request_key (int *,char*,char*) ;
 struct key* request_key_with_auxdata (int *,char*,int *,char*,int ,struct idmap*) ;
 int set_bit (int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static struct key *nfs_idmap_request_key(const char *name, size_t namelen,
      const char *type, struct idmap *idmap)
{
 char *desc;
 struct key *rkey = ERR_PTR(-EAGAIN);
 ssize_t ret;

 ret = nfs_idmap_get_desc(name, namelen, type, strlen(type), &desc);
 if (ret < 0)
  return ERR_PTR(ret);

 if (!idmap->cred || idmap->cred->user_ns == &init_user_ns)
  rkey = request_key(&key_type_id_resolver, desc, "");
 if (IS_ERR(rkey)) {
  mutex_lock(&idmap->idmap_mutex);
  rkey = request_key_with_auxdata(&key_type_id_resolver_legacy,
      desc, ((void*)0), "", 0, idmap);
  mutex_unlock(&idmap->idmap_mutex);
 }
 if (!IS_ERR(rkey))
  set_bit(KEY_FLAG_ROOT_CAN_INVAL, &rkey->flags);

 kfree(desc);
 return rkey;
}

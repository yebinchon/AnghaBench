
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_key_payload {size_t datalen; int data; int perm; } ;
typedef struct key {size_t datalen; int data; int perm; } const key ;
struct idmap {int dummy; } ;
struct cred {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ IS_ERR (struct user_key_payload const*) ;
 scalar_t__ IS_ERR_OR_NULL (struct user_key_payload const*) ;
 int KEY_USR_VIEW ;
 size_t PTR_ERR (struct user_key_payload const*) ;
 int id_resolver_cache ;
 int key_put (struct user_key_payload const*) ;
 size_t key_validate (struct user_key_payload const*) ;
 int memcpy (void*,int ,size_t) ;
 struct user_key_payload* nfs_idmap_request_key (char const*,size_t,char const*,struct idmap*) ;
 struct cred* override_creds (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int revert_creds (struct cred const*) ;
 struct user_key_payload* user_key_payload_rcu (struct user_key_payload const*) ;

__attribute__((used)) static ssize_t nfs_idmap_get_key(const char *name, size_t namelen,
     const char *type, void *data,
     size_t data_size, struct idmap *idmap)
{
 const struct cred *saved_cred;
 struct key *rkey;
 const struct user_key_payload *payload;
 ssize_t ret;

 saved_cred = override_creds(id_resolver_cache);
 rkey = nfs_idmap_request_key(name, namelen, type, idmap);
 revert_creds(saved_cred);

 if (IS_ERR(rkey)) {
  ret = PTR_ERR(rkey);
  goto out;
 }

 rcu_read_lock();
 rkey->perm |= KEY_USR_VIEW;

 ret = key_validate(rkey);
 if (ret < 0)
  goto out_up;

 payload = user_key_payload_rcu(rkey);
 if (IS_ERR_OR_NULL(payload)) {
  ret = PTR_ERR(payload);
  goto out_up;
 }

 ret = payload->datalen;
 if (ret > 0 && ret <= data_size)
  memcpy(data, payload->data, ret);
 else
  ret = -EINVAL;

out_up:
 rcu_read_unlock();
 key_put(rkey);
out:
 return ret;
}

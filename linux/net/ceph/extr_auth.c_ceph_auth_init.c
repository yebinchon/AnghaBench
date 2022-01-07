
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int dummy; } ;
struct ceph_auth_client {int negotiating; char const* name; struct ceph_crypto_key const* key; int mutex; } ;


 char const* CEPH_AUTH_NAME_DEFAULT ;
 int ENOMEM ;
 struct ceph_auth_client* ERR_PTR (int) ;
 int GFP_NOFS ;
 int dout (char*,char const*) ;
 struct ceph_auth_client* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct ceph_auth_client *ceph_auth_init(const char *name, const struct ceph_crypto_key *key)
{
 struct ceph_auth_client *ac;
 int ret;

 dout("auth_init name '%s'\n", name);

 ret = -ENOMEM;
 ac = kzalloc(sizeof(*ac), GFP_NOFS);
 if (!ac)
  goto out;

 mutex_init(&ac->mutex);
 ac->negotiating = 1;
 if (name)
  ac->name = name;
 else
  ac->name = CEPH_AUTH_NAME_DEFAULT;
 dout("auth_init name %s\n", ac->name);
 ac->key = key;
 return ac;

out:
 return ERR_PTR(ret);
}

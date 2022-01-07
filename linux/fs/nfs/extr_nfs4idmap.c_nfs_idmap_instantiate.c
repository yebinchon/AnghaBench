
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_2__ {int thread_keyring; } ;


 TYPE_1__* id_resolver_cache ;
 int key_instantiate_and_link (struct key*,char*,size_t,int ,struct key*) ;

__attribute__((used)) static int nfs_idmap_instantiate(struct key *key, struct key *authkey, char *data, size_t datalen)
{
 return key_instantiate_and_link(key, data, datalen,
     id_resolver_cache->thread_keyring,
     authkey);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_keyring; } ;


 TYPE_1__* id_resolver_cache ;
 int key_revoke (int ) ;
 int key_type_id_resolver ;
 int key_type_id_resolver_legacy ;
 int put_cred (TYPE_1__*) ;
 int unregister_key_type (int *) ;

void nfs_idmap_quit(void)
{
 key_revoke(id_resolver_cache->thread_keyring);
 unregister_key_type(&key_type_id_resolver);
 unregister_key_type(&key_type_id_resolver_legacy);
 put_cred(id_resolver_cache);
}

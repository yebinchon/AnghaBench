
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct idmap {TYPE_1__* idmap_upcall_data; } ;
struct TYPE_2__ {struct key* authkey; } ;


 int complete_request_key (struct key*,int) ;
 int key_put (struct key*) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void
nfs_idmap_complete_pipe_upcall_locked(struct idmap *idmap, int ret)
{
 struct key *authkey = idmap->idmap_upcall_data->authkey;

 kfree(idmap->idmap_upcall_data);
 idmap->idmap_upcall_data = ((void*)0);
 complete_request_key(authkey, ret);
 key_put(authkey);
}

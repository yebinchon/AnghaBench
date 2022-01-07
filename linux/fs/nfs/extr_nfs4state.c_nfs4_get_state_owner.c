
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct nfs4_state_owner {int dummy; } ;
struct cred {int dummy; } ;
typedef int gfp_t ;


 struct nfs4_state_owner* nfs4_alloc_state_owner (struct nfs_server*,struct cred const*,int ) ;
 struct nfs4_state_owner* nfs4_find_state_owner_locked (struct nfs_server*,struct cred const*) ;
 int nfs4_free_state_owner (struct nfs4_state_owner*) ;
 int nfs4_gc_state_owners (struct nfs_server*) ;
 struct nfs4_state_owner* nfs4_insert_state_owner_locked (struct nfs4_state_owner*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs4_state_owner *nfs4_get_state_owner(struct nfs_server *server,
           const struct cred *cred,
           gfp_t gfp_flags)
{
 struct nfs_client *clp = server->nfs_client;
 struct nfs4_state_owner *sp, *new;

 spin_lock(&clp->cl_lock);
 sp = nfs4_find_state_owner_locked(server, cred);
 spin_unlock(&clp->cl_lock);
 if (sp != ((void*)0))
  goto out;
 new = nfs4_alloc_state_owner(server, cred, gfp_flags);
 if (new == ((void*)0))
  goto out;
 spin_lock(&clp->cl_lock);
 sp = nfs4_insert_state_owner_locked(new);
 spin_unlock(&clp->cl_lock);
 if (sp != new)
  nfs4_free_state_owner(new);
out:
 nfs4_gc_state_owners(server);
 return sp;
}

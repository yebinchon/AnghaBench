
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_openowner {int dummy; } ;
struct nfs4_ol_stateid {int dummy; } ;
struct nfs4_lockowner {int dummy; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_delegation {int dummy; } ;
struct nfs4_clnt_odstate {int dummy; } ;
struct nfs4_client {int dummy; } ;


 int ENOMEM ;
 int * client_slab ;
 int * deleg_slab ;
 int dprintk (char*) ;
 int * file_slab ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int * lockowner_slab ;
 int * odstate_slab ;
 int * openowner_slab ;
 int * stateid_slab ;

int
nfsd4_init_slabs(void)
{
 client_slab = kmem_cache_create("nfsd4_clients",
   sizeof(struct nfs4_client), 0, 0, ((void*)0));
 if (client_slab == ((void*)0))
  goto out;
 openowner_slab = kmem_cache_create("nfsd4_openowners",
   sizeof(struct nfs4_openowner), 0, 0, ((void*)0));
 if (openowner_slab == ((void*)0))
  goto out_free_client_slab;
 lockowner_slab = kmem_cache_create("nfsd4_lockowners",
   sizeof(struct nfs4_lockowner), 0, 0, ((void*)0));
 if (lockowner_slab == ((void*)0))
  goto out_free_openowner_slab;
 file_slab = kmem_cache_create("nfsd4_files",
   sizeof(struct nfs4_file), 0, 0, ((void*)0));
 if (file_slab == ((void*)0))
  goto out_free_lockowner_slab;
 stateid_slab = kmem_cache_create("nfsd4_stateids",
   sizeof(struct nfs4_ol_stateid), 0, 0, ((void*)0));
 if (stateid_slab == ((void*)0))
  goto out_free_file_slab;
 deleg_slab = kmem_cache_create("nfsd4_delegations",
   sizeof(struct nfs4_delegation), 0, 0, ((void*)0));
 if (deleg_slab == ((void*)0))
  goto out_free_stateid_slab;
 odstate_slab = kmem_cache_create("nfsd4_odstate",
   sizeof(struct nfs4_clnt_odstate), 0, 0, ((void*)0));
 if (odstate_slab == ((void*)0))
  goto out_free_deleg_slab;
 return 0;

out_free_deleg_slab:
 kmem_cache_destroy(deleg_slab);
out_free_stateid_slab:
 kmem_cache_destroy(stateid_slab);
out_free_file_slab:
 kmem_cache_destroy(file_slab);
out_free_lockowner_slab:
 kmem_cache_destroy(lockowner_slab);
out_free_openowner_slab:
 kmem_cache_destroy(openowner_slab);
out_free_client_slab:
 kmem_cache_destroy(client_slab);
out:
 dprintk("nfsd4: out of memory while initializing nfsv4\n");
 return -ENOMEM;
}

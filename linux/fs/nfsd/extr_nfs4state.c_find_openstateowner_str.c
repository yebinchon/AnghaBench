
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {int dummy; } ;
struct nfs4_openowner {int dummy; } ;
struct nfs4_client {int cl_lock; } ;


 struct nfs4_openowner* find_openstateowner_str_locked (unsigned int,struct nfsd4_open*,struct nfs4_client*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_openowner *
find_openstateowner_str(unsigned int hashval, struct nfsd4_open *open,
   struct nfs4_client *clp)
{
 struct nfs4_openowner *oo;

 spin_lock(&clp->cl_lock);
 oo = find_openstateowner_str_locked(hashval, open, clp);
 spin_unlock(&clp->cl_lock);
 return oo;
}

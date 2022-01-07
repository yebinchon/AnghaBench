
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {scalar_t__ fi_delegees; int fi_lock; int fi_deleg_file; } ;


 int nfsd_file_put (struct nfsd_file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap (struct nfsd_file*,int ) ;

__attribute__((used)) static void put_deleg_file(struct nfs4_file *fp)
{
 struct nfsd_file *nf = ((void*)0);

 spin_lock(&fp->fi_lock);
 if (--fp->fi_delegees == 0)
  swap(nf, fp->fi_deleg_file);
 spin_unlock(&fp->fi_lock);

 if (nf)
  nfsd_file_put(nf);
}

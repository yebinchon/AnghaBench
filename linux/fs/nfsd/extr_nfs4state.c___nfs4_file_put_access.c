
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {int fi_lock; int * fi_fds; int * fi_access; } ;


 size_t O_RDWR ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int might_lock (int *) ;
 int nfsd_file_put (struct nfsd_file*) ;
 int spin_unlock (int *) ;
 int swap (struct nfsd_file*,int ) ;

__attribute__((used)) static void __nfs4_file_put_access(struct nfs4_file *fp, int oflag)
{
 might_lock(&fp->fi_lock);

 if (atomic_dec_and_lock(&fp->fi_access[oflag], &fp->fi_lock)) {
  struct nfsd_file *f1 = ((void*)0);
  struct nfsd_file *f2 = ((void*)0);

  swap(f1, fp->fi_fds[oflag]);
  if (atomic_read(&fp->fi_access[1 - oflag]) == 0)
   swap(f2, fp->fi_fds[O_RDWR]);
  spin_unlock(&fp->fi_lock);
  if (f1)
   nfsd_file_put(f1);
  if (f2)
   nfsd_file_put(f2);
 }
}

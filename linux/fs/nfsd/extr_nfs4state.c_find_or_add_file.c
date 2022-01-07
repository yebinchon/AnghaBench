
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int dummy; } ;
struct knfsd_fh {int dummy; } ;


 unsigned int file_hashval (struct knfsd_fh*) ;
 struct nfs4_file* find_file_locked (struct knfsd_fh*,unsigned int) ;
 scalar_t__ likely (int ) ;
 int nfsd4_init_file (struct knfsd_fh*,unsigned int,struct nfs4_file*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int state_lock ;

__attribute__((used)) static struct nfs4_file *
find_or_add_file(struct nfs4_file *new, struct knfsd_fh *fh)
{
 struct nfs4_file *fp;
 unsigned int hashval = file_hashval(fh);

 rcu_read_lock();
 fp = find_file_locked(fh, hashval);
 rcu_read_unlock();
 if (fp)
  return fp;

 spin_lock(&state_lock);
 fp = find_file_locked(fh, hashval);
 if (likely(fp == ((void*)0))) {
  nfsd4_init_file(fh, hashval, new);
  fp = new;
 }
 spin_unlock(&state_lock);

 return fp;
}

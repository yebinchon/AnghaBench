
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int dummy; } ;
struct knfsd_fh {int dummy; } ;


 unsigned int file_hashval (struct knfsd_fh*) ;
 struct nfs4_file* find_file_locked (struct knfsd_fh*,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct nfs4_file *
find_file(struct knfsd_fh *fh)
{
 struct nfs4_file *fp;
 unsigned int hashval = file_hashval(fh);

 rcu_read_lock();
 fp = find_file_locked(fh, hashval);
 rcu_read_unlock();
 return fp;
}

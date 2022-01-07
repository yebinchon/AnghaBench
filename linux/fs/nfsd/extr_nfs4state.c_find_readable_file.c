
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {int fi_lock; } ;


 struct nfsd_file* find_readable_file_locked (struct nfs4_file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfsd_file *
find_readable_file(struct nfs4_file *f)
{
 struct nfsd_file *ret;

 spin_lock(&f->fi_lock);
 ret = find_readable_file_locked(f);
 spin_unlock(&f->fi_lock);

 return ret;
}

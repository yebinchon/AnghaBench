
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {int fi_lock; } ;


 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 struct nfsd_file* __nfs4_get_fd (struct nfs4_file*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfsd_file *
find_any_file(struct nfs4_file *f)
{
 struct nfsd_file *ret;

 spin_lock(&f->fi_lock);
 ret = __nfs4_get_fd(f, O_RDWR);
 if (!ret) {
  ret = __nfs4_get_fd(f, O_WRONLY);
  if (!ret)
   ret = __nfs4_get_fd(f, O_RDONLY);
 }
 spin_unlock(&f->fi_lock);
 return ret;
}

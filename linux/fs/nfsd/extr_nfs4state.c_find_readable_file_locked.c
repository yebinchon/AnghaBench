
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {int fi_lock; } ;


 int O_RDONLY ;
 int O_RDWR ;
 struct nfsd_file* __nfs4_get_fd (struct nfs4_file*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct nfsd_file *
find_readable_file_locked(struct nfs4_file *f)
{
 struct nfsd_file *ret;

 lockdep_assert_held(&f->fi_lock);

 ret = __nfs4_get_fd(f, O_RDONLY);
 if (!ret)
  ret = __nfs4_get_fd(f, O_RDWR);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;
struct nfs4_file {scalar_t__* fi_fds; } ;


 struct nfsd_file* nfsd_file_get (scalar_t__) ;

__attribute__((used)) static struct nfsd_file *
__nfs4_get_fd(struct nfs4_file *f, int oflag)
{
 if (f->fi_fds[oflag])
  return nfsd_file_get(f->fi_fds[oflag]);
 return ((void*)0);
}

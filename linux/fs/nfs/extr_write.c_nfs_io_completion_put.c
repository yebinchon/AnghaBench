
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_completion {int refcount; } ;


 int kref_put (int *,int ) ;
 int nfs_io_completion_release ;

__attribute__((used)) static void nfs_io_completion_put(struct nfs_io_completion *ioc)
{
 if (ioc != ((void*)0))
  kref_put(&ioc->refcount, nfs_io_completion_release);
}

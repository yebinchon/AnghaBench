
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_completion {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void nfs_io_completion_get(struct nfs_io_completion *ioc)
{
 if (ioc != ((void*)0))
  kref_get(&ioc->refcount);
}

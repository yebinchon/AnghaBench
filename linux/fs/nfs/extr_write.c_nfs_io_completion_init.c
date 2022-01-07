
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_completion {void (* complete ) (void*) ;int refcount; void* data; } ;


 int kref_init (int *) ;

__attribute__((used)) static void nfs_io_completion_init(struct nfs_io_completion *ioc,
  void (*complete)(void *), void *data)
{
 ioc->complete = complete;
 ioc->data = data;
 kref_init(&ioc->refcount);
}

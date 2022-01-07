
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parallel_io {int refcnt; void* data; } ;


 int GFP_NOFS ;
 struct parallel_io* kmalloc (int,int ) ;
 int kref_init (int *) ;

__attribute__((used)) static inline struct parallel_io *alloc_parallel(void *data)
{
 struct parallel_io *rv;

 rv = kmalloc(sizeof(*rv), GFP_NOFS);
 if (rv) {
  rv->data = data;
  kref_init(&rv->refcnt);
 }
 return rv;
}

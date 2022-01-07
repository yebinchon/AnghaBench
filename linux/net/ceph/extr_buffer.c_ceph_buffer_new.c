
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t iov_len; int iov_base; } ;
struct ceph_buffer {size_t alloc_len; TYPE_1__ vec; int kref; } ;
typedef int gfp_t ;


 int ceph_kvmalloc (size_t,int ) ;
 int dout (char*,struct ceph_buffer*) ;
 int kfree (struct ceph_buffer*) ;
 struct ceph_buffer* kmalloc (int,int ) ;
 int kref_init (int *) ;

struct ceph_buffer *ceph_buffer_new(size_t len, gfp_t gfp)
{
 struct ceph_buffer *b;

 b = kmalloc(sizeof(*b), gfp);
 if (!b)
  return ((void*)0);

 b->vec.iov_base = ceph_kvmalloc(len, gfp);
 if (!b->vec.iov_base) {
  kfree(b);
  return ((void*)0);
 }

 kref_init(&b->kref);
 b->alloc_len = len;
 b->vec.iov_len = len;
 dout("buffer_new %p\n", b);
 return b;
}

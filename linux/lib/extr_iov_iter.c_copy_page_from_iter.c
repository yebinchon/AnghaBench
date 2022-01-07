
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iov_iter {int type; } ;


 int ITER_BVEC ;
 int ITER_KVEC ;
 int WARN_ON (int) ;
 size_t _copy_from_iter (void*,size_t,struct iov_iter*) ;
 size_t copy_page_from_iter_iovec (struct page*,size_t,size_t,struct iov_iter*) ;
 scalar_t__ iov_iter_is_discard (struct iov_iter*) ;
 scalar_t__ iov_iter_is_pipe (struct iov_iter*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int page_copy_sane (struct page*,size_t,size_t) ;
 scalar_t__ unlikely (int) ;

size_t copy_page_from_iter(struct page *page, size_t offset, size_t bytes,
    struct iov_iter *i)
{
 if (unlikely(!page_copy_sane(page, offset, bytes)))
  return 0;
 if (unlikely(iov_iter_is_pipe(i) || iov_iter_is_discard(i))) {
  WARN_ON(1);
  return 0;
 }
 if (i->type & (ITER_BVEC|ITER_KVEC)) {
  void *kaddr = kmap_atomic(page);
  size_t wanted = _copy_from_iter(kaddr + offset, bytes, i);
  kunmap_atomic(kaddr);
  return wanted;
 } else
  return copy_page_from_iter_iovec(page, offset, bytes, i);
}

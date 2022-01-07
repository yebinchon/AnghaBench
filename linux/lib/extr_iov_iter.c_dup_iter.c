
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
struct iov_iter {void const* bvec; int nr_segs; void const* iov; } ;
struct bio_vec {int dummy; } ;
typedef int gfp_t ;


 int WARN_ON (int) ;
 scalar_t__ iov_iter_is_bvec (struct iov_iter*) ;
 int iov_iter_is_discard (struct iov_iter*) ;
 int iov_iter_is_pipe (struct iov_iter*) ;
 void* kmemdup (void const*,int,int ) ;
 scalar_t__ unlikely (int ) ;

const void *dup_iter(struct iov_iter *new, struct iov_iter *old, gfp_t flags)
{
 *new = *old;
 if (unlikely(iov_iter_is_pipe(new))) {
  WARN_ON(1);
  return ((void*)0);
 }
 if (unlikely(iov_iter_is_discard(new)))
  return ((void*)0);
 if (iov_iter_is_bvec(new))
  return new->bvec = kmemdup(new->bvec,
        new->nr_segs * sizeof(struct bio_vec),
        flags);
 else

  return new->iov = kmemdup(new->iov,
       new->nr_segs * sizeof(struct iovec),
       flags);
}

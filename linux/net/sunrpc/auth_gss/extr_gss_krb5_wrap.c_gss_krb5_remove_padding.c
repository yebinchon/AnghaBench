
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xdr_buf {size_t len; size_t page_len; size_t page_base; TYPE_2__* tail; int * pages; TYPE_1__* head; } ;
struct TYPE_4__ {size_t iov_len; size_t iov_base; } ;
struct TYPE_3__ {size_t iov_len; size_t iov_base; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int* kmap_atomic (int ) ;
 int kunmap_atomic (int*) ;

__attribute__((used)) static inline int
gss_krb5_remove_padding(struct xdr_buf *buf, int blocksize)
{
 u8 *ptr;
 u8 pad;
 size_t len = buf->len;

 if (len <= buf->head[0].iov_len) {
  pad = *(u8 *)(buf->head[0].iov_base + len - 1);
  if (pad > buf->head[0].iov_len)
   return -EINVAL;
  buf->head[0].iov_len -= pad;
  goto out;
 } else
  len -= buf->head[0].iov_len;
 if (len <= buf->page_len) {
  unsigned int last = (buf->page_base + len - 1)
     >>PAGE_SHIFT;
  unsigned int offset = (buf->page_base + len - 1)
     & (PAGE_SIZE - 1);
  ptr = kmap_atomic(buf->pages[last]);
  pad = *(ptr + offset);
  kunmap_atomic(ptr);
  goto out;
 } else
  len -= buf->page_len;
 BUG_ON(len > buf->tail[0].iov_len);
 pad = *(u8 *)(buf->tail[0].iov_base + len - 1);
out:
 if (pad > blocksize)
  return -EINVAL;
 if (buf->len > pad)
  buf->len -= pad;
 else
  return -EINVAL;
 return 0;
}

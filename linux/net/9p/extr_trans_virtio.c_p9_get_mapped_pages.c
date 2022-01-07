
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_chan {scalar_t__ p9_max_pages; } ;
struct page {int dummy; } ;
struct iov_iter {int iov_offset; TYPE_1__* kvec; } ;
struct TYPE_2__ {void* iov_base; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_NOFS ;
 unsigned long PAGE_SIZE ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int iov_iter_advance (struct iov_iter*,int ) ;
 int iov_iter_count (struct iov_iter*) ;
 int iov_iter_get_pages_alloc (struct iov_iter*,struct page***,int,size_t*) ;
 int iov_iter_is_kvec (struct iov_iter*) ;
 size_t iov_iter_single_seg_count (struct iov_iter*) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 struct page** kmalloc_array (int,int,int ) ;
 struct page* kmap_to_page (void*) ;
 scalar_t__ likely (size_t) ;
 size_t offset_in_page (void*) ;
 struct page* vmalloc_to_page (void*) ;
 int vp_pinned ;
 int vp_wq ;
 int wait_event_killable (int ,int) ;

__attribute__((used)) static int p9_get_mapped_pages(struct virtio_chan *chan,
          struct page ***pages,
          struct iov_iter *data,
          int count,
          size_t *offs,
          int *need_drop)
{
 int nr_pages;
 int err;

 if (!iov_iter_count(data))
  return 0;

 if (!iov_iter_is_kvec(data)) {
  int n;




  if (atomic_read(&vp_pinned) >= chan->p9_max_pages) {
   err = wait_event_killable(vp_wq,
         (atomic_read(&vp_pinned) < chan->p9_max_pages));
   if (err == -ERESTARTSYS)
    return err;
  }
  n = iov_iter_get_pages_alloc(data, pages, count, offs);
  if (n < 0)
   return n;
  *need_drop = 1;
  nr_pages = DIV_ROUND_UP(n + *offs, PAGE_SIZE);
  atomic_add(nr_pages, &vp_pinned);
  return n;
 } else {

  int index;
  size_t len;
  void *p;


  while (1) {
   len = iov_iter_single_seg_count(data);
   if (likely(len)) {
    p = data->kvec->iov_base + data->iov_offset;
    break;
   }
   iov_iter_advance(data, 0);
  }
  if (len > count)
   len = count;

  nr_pages = DIV_ROUND_UP((unsigned long)p + len, PAGE_SIZE) -
      (unsigned long)p / PAGE_SIZE;

  *pages = kmalloc_array(nr_pages, sizeof(struct page *),
           GFP_NOFS);
  if (!*pages)
   return -ENOMEM;

  *need_drop = 0;
  p -= (*offs = offset_in_page(p));
  for (index = 0; index < nr_pages; index++) {
   if (is_vmalloc_addr(p))
    (*pages)[index] = vmalloc_to_page(p);
   else
    (*pages)[index] = kmap_to_page(p);
   p += PAGE_SIZE;
  }
  return len;
 }
}

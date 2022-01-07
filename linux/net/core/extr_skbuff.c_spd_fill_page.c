
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_pipe_desc {int nr_pages; TYPE_1__* partial; struct page** pages; } ;
struct sock {int dummy; } ;
struct pipe_inode_info {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int offset; } ;


 int MAX_SKB_FRAGS ;
 int get_page (struct page*) ;
 struct page* linear_to_page (struct page*,unsigned int*,unsigned int*,struct sock*) ;
 scalar_t__ spd_can_coalesce (struct splice_pipe_desc*,struct page*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool spd_fill_page(struct splice_pipe_desc *spd,
     struct pipe_inode_info *pipe, struct page *page,
     unsigned int *len, unsigned int offset,
     bool linear,
     struct sock *sk)
{
 if (unlikely(spd->nr_pages == MAX_SKB_FRAGS))
  return 1;

 if (linear) {
  page = linear_to_page(page, len, &offset, sk);
  if (!page)
   return 1;
 }
 if (spd_can_coalesce(spd, page, offset)) {
  spd->partial[spd->nr_pages - 1].len += *len;
  return 0;
 }
 get_page(page);
 spd->pages[spd->nr_pages] = page;
 spd->partial[spd->nr_pages].len = *len;
 spd->partial[spd->nr_pages].offset = offset;
 spd->nr_pages++;

 return 0;
}

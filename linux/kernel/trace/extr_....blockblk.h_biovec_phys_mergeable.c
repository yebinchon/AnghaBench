
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio_vec {unsigned long bv_offset; unsigned long bv_len; int bv_page; } ;
typedef unsigned long phys_addr_t ;


 unsigned long page_to_phys (int ) ;
 unsigned long queue_segment_boundary (struct request_queue*) ;
 int xen_biovec_phys_mergeable (struct bio_vec*,int ) ;
 scalar_t__ xen_domain () ;

__attribute__((used)) static inline bool biovec_phys_mergeable(struct request_queue *q,
  struct bio_vec *vec1, struct bio_vec *vec2)
{
 unsigned long mask = queue_segment_boundary(q);
 phys_addr_t addr1 = page_to_phys(vec1->bv_page) + vec1->bv_offset;
 phys_addr_t addr2 = page_to_phys(vec2->bv_page) + vec2->bv_offset;

 if (addr1 + vec1->bv_len != addr2)
  return 0;
 if (xen_domain() && !xen_biovec_phys_mergeable(vec1, vec2->bv_page))
  return 0;
 if ((addr1 | mask) != ((addr2 + vec2->bv_len - 1) | mask))
  return 0;
 return 1;
}

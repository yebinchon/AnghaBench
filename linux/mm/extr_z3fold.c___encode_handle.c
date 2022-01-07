
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {unsigned long last_chunks; } ;
struct z3fold_buddy_slots {unsigned long* slot; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 unsigned long BUDDY_SHIFT ;
 int HEADLESS ;
 int LAST ;
 int PAGE_HEADLESS ;
 int __idx (struct z3fold_header*,int) ;

__attribute__((used)) static unsigned long __encode_handle(struct z3fold_header *zhdr,
    struct z3fold_buddy_slots *slots,
    enum buddy bud)
{
 unsigned long h = (unsigned long)zhdr;
 int idx = 0;





 if (bud == HEADLESS)
  return h | (1 << PAGE_HEADLESS);


 idx = __idx(zhdr, bud);
 h += idx;
 if (bud == LAST)
  h |= (zhdr->last_chunks << BUDDY_SHIFT);

 slots->slot[idx] = h;
 return (unsigned long)&slots->slot[idx];
}

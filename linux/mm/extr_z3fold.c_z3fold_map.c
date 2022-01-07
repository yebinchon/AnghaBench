
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int dummy; } ;
struct z3fold_header {int start_middle; int mapped_count; } ;
struct page {int private; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 int CHUNK_SHIFT ;



 int MIDDLE_CHUNK_MAPPED ;
 int PAGE_HEADLESS ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int ZHDR_SIZE_ALIGNED ;
 int handle_to_buddy (unsigned long) ;
 int handle_to_chunks (unsigned long) ;
 struct z3fold_header* handle_to_z3fold_header (unsigned long) ;
 int pr_err (char*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct page* virt_to_page (struct z3fold_header*) ;
 int z3fold_page_lock (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;

__attribute__((used)) static void *z3fold_map(struct z3fold_pool *pool, unsigned long handle)
{
 struct z3fold_header *zhdr;
 struct page *page;
 void *addr;
 enum buddy buddy;

 zhdr = handle_to_z3fold_header(handle);
 addr = zhdr;
 page = virt_to_page(zhdr);

 if (test_bit(PAGE_HEADLESS, &page->private))
  goto out;

 z3fold_page_lock(zhdr);
 buddy = handle_to_buddy(handle);
 switch (buddy) {
 case 130:
  addr += ZHDR_SIZE_ALIGNED;
  break;
 case 128:
  addr += zhdr->start_middle << CHUNK_SHIFT;
  set_bit(MIDDLE_CHUNK_MAPPED, &page->private);
  break;
 case 129:
  addr += PAGE_SIZE - (handle_to_chunks(handle) << CHUNK_SHIFT);
  break;
 default:
  pr_err("unknown buddy id %d\n", buddy);
  WARN_ON(1);
  addr = ((void*)0);
  break;
 }

 if (addr)
  zhdr->mapped_count++;
 z3fold_page_unlock(zhdr);
out:
 return addr;
}

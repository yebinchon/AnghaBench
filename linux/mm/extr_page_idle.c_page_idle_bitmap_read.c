
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct page {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 unsigned long BITMAP_CHUNK_BITS ;
 size_t BITMAP_CHUNK_SIZE ;
 size_t BITS_PER_BYTE ;
 int EINVAL ;
 int cond_resched () ;
 unsigned long max_pfn ;
 int page_idle_clear_pte_refs (struct page*) ;
 struct page* page_idle_get_page (unsigned long) ;
 scalar_t__ page_is_idle (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static ssize_t page_idle_bitmap_read(struct file *file, struct kobject *kobj,
         struct bin_attribute *attr, char *buf,
         loff_t pos, size_t count)
{
 u64 *out = (u64 *)buf;
 struct page *page;
 unsigned long pfn, end_pfn;
 int bit;

 if (pos % BITMAP_CHUNK_SIZE || count % BITMAP_CHUNK_SIZE)
  return -EINVAL;

 pfn = pos * BITS_PER_BYTE;
 if (pfn >= max_pfn)
  return 0;

 end_pfn = pfn + count * BITS_PER_BYTE;
 if (end_pfn > max_pfn)
  end_pfn = max_pfn;

 for (; pfn < end_pfn; pfn++) {
  bit = pfn % BITMAP_CHUNK_BITS;
  if (!bit)
   *out = 0ULL;
  page = page_idle_get_page(pfn);
  if (page) {
   if (page_is_idle(page)) {





    page_idle_clear_pte_refs(page);
    if (page_is_idle(page))
     *out |= 1ULL << bit;
   }
   put_page(page);
  }
  if (bit == BITMAP_CHUNK_BITS - 1)
   out++;
  cond_resched();
 }
 return (char *)out - buf;
}

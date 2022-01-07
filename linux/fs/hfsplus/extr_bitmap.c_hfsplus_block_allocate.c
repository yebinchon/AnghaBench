
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfsplus_sb_info {int free_blocks; int alloc_mutex; TYPE_1__* alloc_file; } ;
struct address_space {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int BITMAP ;
 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_CACHE_BITS ;
 int be32_to_cpu (int) ;
 void* cpu_to_be32 (int) ;
 int hfs_dbg (int ,char*,...) ;
 int hfsplus_mark_mdb_dirty (struct super_block*) ;
 int* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct page* read_mapping_page (struct address_space*,int,int *) ;
 int set_page_dirty (struct page*) ;

int hfsplus_block_allocate(struct super_block *sb, u32 size,
  u32 offset, u32 *max)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 struct page *page;
 struct address_space *mapping;
 __be32 *pptr, *curr, *end;
 u32 mask, start, len, n;
 __be32 val;
 int i;

 len = *max;
 if (!len)
  return size;

 hfs_dbg(BITMAP, "block_allocate: %u,%u,%u\n", size, offset, len);
 mutex_lock(&sbi->alloc_mutex);
 mapping = sbi->alloc_file->i_mapping;
 page = read_mapping_page(mapping, offset / PAGE_CACHE_BITS, ((void*)0));
 if (IS_ERR(page)) {
  start = size;
  goto out;
 }
 pptr = kmap(page);
 curr = pptr + (offset & (PAGE_CACHE_BITS - 1)) / 32;
 i = offset % 32;
 offset &= ~(PAGE_CACHE_BITS - 1);
 if ((size ^ offset) / PAGE_CACHE_BITS)
  end = pptr + PAGE_CACHE_BITS / 32;
 else
  end = pptr + ((size + 31) & (PAGE_CACHE_BITS - 1)) / 32;


 val = *curr;
 if (~val) {
  n = be32_to_cpu(val);
  mask = (1U << 31) >> i;
  for (; i < 32; mask >>= 1, i++) {
   if (!(n & mask))
    goto found;
  }
 }
 curr++;


 while (1) {
  while (curr < end) {
   val = *curr;
   if (~val) {
    n = be32_to_cpu(val);
    mask = 1 << 31;
    for (i = 0; i < 32; mask >>= 1, i++) {
     if (!(n & mask))
      goto found;
    }
   }
   curr++;
  }
  kunmap(page);
  offset += PAGE_CACHE_BITS;
  if (offset >= size)
   break;
  page = read_mapping_page(mapping, offset / PAGE_CACHE_BITS,
      ((void*)0));
  if (IS_ERR(page)) {
   start = size;
   goto out;
  }
  curr = pptr = kmap(page);
  if ((size ^ offset) / PAGE_CACHE_BITS)
   end = pptr + PAGE_CACHE_BITS / 32;
  else
   end = pptr + ((size + 31) & (PAGE_CACHE_BITS - 1)) / 32;
 }
 hfs_dbg(BITMAP, "bitmap full\n");
 start = size;
 goto out;

found:
 start = offset + (curr - pptr) * 32 + i;
 if (start >= size) {
  hfs_dbg(BITMAP, "bitmap full\n");
  goto out;
 }

 len = min(size - start, len);
 while (1) {
  n |= mask;
  if (++i >= 32)
   break;
  mask >>= 1;
  if (!--len || n & mask)
   goto done;
 }
 if (!--len)
  goto done;
 *curr++ = cpu_to_be32(n);

 while (1) {
  while (curr < end) {
   n = be32_to_cpu(*curr);
   if (len < 32)
    goto last;
   if (n) {
    len = 32;
    goto last;
   }
   *curr++ = cpu_to_be32(0xffffffff);
   len -= 32;
  }
  set_page_dirty(page);
  kunmap(page);
  offset += PAGE_CACHE_BITS;
  page = read_mapping_page(mapping, offset / PAGE_CACHE_BITS,
      ((void*)0));
  if (IS_ERR(page)) {
   start = size;
   goto out;
  }
  pptr = kmap(page);
  curr = pptr;
  end = pptr + PAGE_CACHE_BITS / 32;
 }
last:

 mask = 1U << 31;
 for (i = 0; i < len; i++) {
  if (n & mask)
   break;
  n |= mask;
  mask >>= 1;
 }
done:
 *curr = cpu_to_be32(n);
 set_page_dirty(page);
 kunmap(page);
 *max = offset + (curr - pptr) * 32 + i - start;
 sbi->free_blocks -= *max;
 hfsplus_mark_mdb_dirty(sb);
 hfs_dbg(BITMAP, "-> %u,%u\n", start, *max);
out:
 mutex_unlock(&sbi->alloc_mutex);
 return start;
}

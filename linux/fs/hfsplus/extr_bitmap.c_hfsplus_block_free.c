
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfsplus_sb_info {scalar_t__ total_blocks; int alloc_mutex; int free_blocks; TYPE_1__* alloc_file; } ;
struct address_space {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int BITMAP ;
 int EIO ;
 int ENOENT ;
 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_CACHE_BITS ;
 int PTR_ERR (struct page*) ;
 int cpu_to_be32 (scalar_t__) ;
 int hfs_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int hfsplus_mark_mdb_dirty (struct super_block*) ;
 int * kmap (struct page*) ;
 int kunmap (struct page*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_crit (char*,int ) ;
 struct page* read_mapping_page (struct address_space*,scalar_t__,int *) ;
 int set_page_dirty (struct page*) ;

int hfsplus_block_free(struct super_block *sb, u32 offset, u32 count)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 struct page *page;
 struct address_space *mapping;
 __be32 *pptr, *curr, *end;
 u32 mask, len, pnr;
 int i;


 if (!count)
  return 0;

 hfs_dbg(BITMAP, "block_free: %u,%u\n", offset, count);

 if ((offset + count) > sbi->total_blocks)
  return -ENOENT;

 mutex_lock(&sbi->alloc_mutex);
 mapping = sbi->alloc_file->i_mapping;
 pnr = offset / PAGE_CACHE_BITS;
 page = read_mapping_page(mapping, pnr, ((void*)0));
 if (IS_ERR(page))
  goto kaboom;
 pptr = kmap(page);
 curr = pptr + (offset & (PAGE_CACHE_BITS - 1)) / 32;
 end = pptr + PAGE_CACHE_BITS / 32;
 len = count;


 i = offset % 32;
 if (i) {
  int j = 32 - i;
  mask = 0xffffffffU << j;
  if (j > count) {
   mask |= 0xffffffffU >> (i + count);
   *curr++ &= cpu_to_be32(mask);
   goto out;
  }
  *curr++ &= cpu_to_be32(mask);
  count -= j;
 }


 while (1) {
  while (curr < end) {
   if (count < 32)
    goto done;
   *curr++ = 0;
   count -= 32;
  }
  if (!count)
   break;
  set_page_dirty(page);
  kunmap(page);
  page = read_mapping_page(mapping, ++pnr, ((void*)0));
  if (IS_ERR(page))
   goto kaboom;
  pptr = kmap(page);
  curr = pptr;
  end = pptr + PAGE_CACHE_BITS / 32;
 }
done:

 if (count) {
  mask = 0xffffffffU >> count;
  *curr &= cpu_to_be32(mask);
 }
out:
 set_page_dirty(page);
 kunmap(page);
 sbi->free_blocks += len;
 hfsplus_mark_mdb_dirty(sb);
 mutex_unlock(&sbi->alloc_mutex);

 return 0;

kaboom:
 pr_crit("unable to mark blocks free: error %ld\n", PTR_ERR(page));
 mutex_unlock(&sbi->alloc_mutex);

 return -EIO;
}

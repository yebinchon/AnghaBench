
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int swp_entry_t ;
struct zswap_tree {int lock; int rbroot; } ;
struct zswap_header {int swpentry; } ;
struct zswap_entry {scalar_t__ offset; TYPE_1__* pool; int length; } ;
struct zpool {int dummy; } ;
struct writeback_control {int sync_mode; } ;
struct page {int dummy; } ;
struct crypto_comp {int dummy; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {int tfm; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int ENOMEM ;
 unsigned int PAGE_SIZE ;
 int SetPageReclaim (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int WB_SYNC_NONE ;
 int ZPOOL_MM_RO ;



 int __swap_writepage (struct page*,struct writeback_control*,int ) ;
 int crypto_comp_decompress (struct crypto_comp*,int *,int ,int *,unsigned int*) ;
 int end_swap_bio_write ;
 struct crypto_comp** get_cpu_ptr (int ) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int put_cpu_ptr (int ) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ swp_offset (int ) ;
 size_t swp_type (int ) ;
 struct zswap_header* zpool_map_handle (struct zpool*,unsigned long,int ) ;
 int zpool_unmap_handle (struct zpool*,unsigned long) ;
 struct zswap_entry* zswap_entry_find_get (int *,scalar_t__) ;
 int zswap_entry_put (struct zswap_tree*,struct zswap_entry*) ;
 int zswap_get_swap_cache_page (int ,struct page**) ;
 struct zswap_entry* zswap_rb_search (int *,scalar_t__) ;
 struct zswap_tree** zswap_trees ;
 int zswap_written_back_pages ;

__attribute__((used)) static int zswap_writeback_entry(struct zpool *pool, unsigned long handle)
{
 struct zswap_header *zhdr;
 swp_entry_t swpentry;
 struct zswap_tree *tree;
 pgoff_t offset;
 struct zswap_entry *entry;
 struct page *page;
 struct crypto_comp *tfm;
 u8 *src, *dst;
 unsigned int dlen;
 int ret;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_NONE,
 };


 zhdr = zpool_map_handle(pool, handle, ZPOOL_MM_RO);
 swpentry = zhdr->swpentry;
 tree = zswap_trees[swp_type(swpentry)];
 offset = swp_offset(swpentry);


 spin_lock(&tree->lock);
 entry = zswap_entry_find_get(&tree->rbroot, offset);
 if (!entry) {

  spin_unlock(&tree->lock);
  zpool_unmap_handle(pool, handle);
  return 0;
 }
 spin_unlock(&tree->lock);
 BUG_ON(offset != entry->offset);


 switch (zswap_get_swap_cache_page(swpentry, &page)) {
 case 129:
  ret = -ENOMEM;
  goto fail;

 case 130:

  put_page(page);
  ret = -EEXIST;
  goto fail;

 case 128:

  dlen = PAGE_SIZE;
  src = (u8 *)zhdr + sizeof(struct zswap_header);
  dst = kmap_atomic(page);
  tfm = *get_cpu_ptr(entry->pool->tfm);
  ret = crypto_comp_decompress(tfm, src, entry->length,
          dst, &dlen);
  put_cpu_ptr(entry->pool->tfm);
  kunmap_atomic(dst);
  BUG_ON(ret);
  BUG_ON(dlen != PAGE_SIZE);


  SetPageUptodate(page);
 }


 SetPageReclaim(page);


 __swap_writepage(page, &wbc, end_swap_bio_write);
 put_page(page);
 zswap_written_back_pages++;

 spin_lock(&tree->lock);

 zswap_entry_put(tree, entry);
 if (entry == zswap_rb_search(&tree->rbroot, offset))
  zswap_entry_put(tree, entry);
 spin_unlock(&tree->lock);

 goto end;
fail:
 spin_lock(&tree->lock);
 zswap_entry_put(tree, entry);
 spin_unlock(&tree->lock);

end:
 zpool_unmap_handle(pool, handle);
 return ret;
}

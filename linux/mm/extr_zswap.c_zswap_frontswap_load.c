
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct zswap_tree {int lock; int rbroot; } ;
struct zswap_header {int dummy; } ;
struct zswap_entry {int handle; TYPE_1__* pool; int length; int value; } ;
struct page {int dummy; } ;
struct crypto_comp {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_2__ {int zpool; int tfm; } ;


 int BUG_ON (int) ;
 unsigned int PAGE_SIZE ;
 int ZPOOL_MM_RO ;
 int crypto_comp_decompress (struct crypto_comp*,int *,int ,int *,unsigned int*) ;
 struct crypto_comp** get_cpu_ptr (int ) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int put_cpu_ptr (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ zpool_evictable (int ) ;
 int * zpool_map_handle (int ,int ,int ) ;
 int zpool_unmap_handle (int ,int ) ;
 struct zswap_entry* zswap_entry_find_get (int *,int ) ;
 int zswap_entry_put (struct zswap_tree*,struct zswap_entry*) ;
 int zswap_fill_page (int *,int ) ;
 struct zswap_tree** zswap_trees ;

__attribute__((used)) static int zswap_frontswap_load(unsigned type, pgoff_t offset,
    struct page *page)
{
 struct zswap_tree *tree = zswap_trees[type];
 struct zswap_entry *entry;
 struct crypto_comp *tfm;
 u8 *src, *dst;
 unsigned int dlen;
 int ret;


 spin_lock(&tree->lock);
 entry = zswap_entry_find_get(&tree->rbroot, offset);
 if (!entry) {

  spin_unlock(&tree->lock);
  return -1;
 }
 spin_unlock(&tree->lock);

 if (!entry->length) {
  dst = kmap_atomic(page);
  zswap_fill_page(dst, entry->value);
  kunmap_atomic(dst);
  goto freeentry;
 }


 dlen = PAGE_SIZE;
 src = zpool_map_handle(entry->pool->zpool, entry->handle, ZPOOL_MM_RO);
 if (zpool_evictable(entry->pool->zpool))
  src += sizeof(struct zswap_header);
 dst = kmap_atomic(page);
 tfm = *get_cpu_ptr(entry->pool->tfm);
 ret = crypto_comp_decompress(tfm, src, entry->length, dst, &dlen);
 put_cpu_ptr(entry->pool->tfm);
 kunmap_atomic(dst);
 zpool_unmap_handle(entry->pool->zpool, entry->handle);
 BUG_ON(ret);

freeentry:
 spin_lock(&tree->lock);
 zswap_entry_put(tree, entry);
 spin_unlock(&tree->lock);

 return 0;
}

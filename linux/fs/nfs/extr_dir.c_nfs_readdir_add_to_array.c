
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_entry {scalar_t__ eof; int cookie; int len; int name; int d_type; int ino; int prev_cookie; } ;
struct nfs_cache_array_entry {int string; int d_type; int ino; int cookie; } ;
struct nfs_cache_array {size_t size; size_t eof_index; int last_cookie; struct nfs_cache_array_entry* array; } ;


 int ENOSPC ;
 int PAGE_SIZE ;
 struct nfs_cache_array* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int nfs_readdir_make_qstr (int *,int ,int ) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static
int nfs_readdir_add_to_array(struct nfs_entry *entry, struct page *page)
{
 struct nfs_cache_array *array = kmap(page);
 struct nfs_cache_array_entry *cache_entry;
 int ret;

 cache_entry = &array->array[array->size];


 ret = -ENOSPC;
 if ((char *)&cache_entry[1] - (char *)page_address(page) > PAGE_SIZE)
  goto out;

 cache_entry->cookie = entry->prev_cookie;
 cache_entry->ino = entry->ino;
 cache_entry->d_type = entry->d_type;
 ret = nfs_readdir_make_qstr(&cache_entry->string, entry->name, entry->len);
 if (ret)
  goto out;
 array->last_cookie = entry->cookie;
 array->size++;
 if (entry->eof != 0)
  array->eof_index = array->size;
out:
 kunmap(page);
 return ret;
}

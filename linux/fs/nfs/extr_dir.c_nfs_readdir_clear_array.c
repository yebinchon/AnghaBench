
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_cache_array {int size; TYPE_2__* array; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ string; } ;


 int kfree (int ) ;
 struct nfs_cache_array* kmap_atomic (struct page*) ;
 int kunmap_atomic (struct nfs_cache_array*) ;

__attribute__((used)) static
void nfs_readdir_clear_array(struct page *page)
{
 struct nfs_cache_array *array;
 int i;

 array = kmap_atomic(page);
 for (i = 0; i < array->size; i++)
  kfree(array->array[i].string.name);
 kunmap_atomic(array);
}

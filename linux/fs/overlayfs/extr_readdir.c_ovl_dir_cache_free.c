
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_dir_cache {int entries; } ;
struct inode {int dummy; } ;


 int kfree (struct ovl_dir_cache*) ;
 int ovl_cache_free (int *) ;
 struct ovl_dir_cache* ovl_dir_cache (struct inode*) ;

void ovl_dir_cache_free(struct inode *inode)
{
 struct ovl_dir_cache *cache = ovl_dir_cache(inode);

 if (cache) {
  ovl_cache_free(&cache->entries);
  kfree(cache);
 }
}

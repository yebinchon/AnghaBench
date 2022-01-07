
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_dir_file {struct ovl_dir_cache* cache; } ;
struct ovl_dir_cache {scalar_t__ refcount; int entries; } ;
struct dentry {int dummy; } ;


 int WARN_ON (int) ;
 int d_inode (struct dentry*) ;
 int kfree (struct ovl_dir_cache*) ;
 int ovl_cache_free (int *) ;
 struct ovl_dir_cache* ovl_dir_cache (int ) ;
 int ovl_set_dir_cache (int ,int *) ;

__attribute__((used)) static void ovl_cache_put(struct ovl_dir_file *od, struct dentry *dentry)
{
 struct ovl_dir_cache *cache = od->cache;

 WARN_ON(cache->refcount <= 0);
 cache->refcount--;
 if (!cache->refcount) {
  if (ovl_dir_cache(d_inode(dentry)) == cache)
   ovl_set_dir_cache(d_inode(dentry), ((void*)0));

  ovl_cache_free(&cache->entries);
  kfree(cache);
 }
}

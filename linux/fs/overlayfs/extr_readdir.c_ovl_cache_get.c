
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_dir_cache {scalar_t__ version; int refcount; int entries; int root; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct ovl_dir_cache* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int WARN_ON (int) ;
 int d_inode (struct dentry*) ;
 int kfree (struct ovl_dir_cache*) ;
 struct ovl_dir_cache* kzalloc (int,int ) ;
 int ovl_cache_free (int *) ;
 scalar_t__ ovl_dentry_version_get (struct dentry*) ;
 struct ovl_dir_cache* ovl_dir_cache (int ) ;
 int ovl_dir_read_merged (struct dentry*,int *,int *) ;
 int ovl_set_dir_cache (int ,struct ovl_dir_cache*) ;

__attribute__((used)) static struct ovl_dir_cache *ovl_cache_get(struct dentry *dentry)
{
 int res;
 struct ovl_dir_cache *cache;

 cache = ovl_dir_cache(d_inode(dentry));
 if (cache && ovl_dentry_version_get(dentry) == cache->version) {
  WARN_ON(!cache->refcount);
  cache->refcount++;
  return cache;
 }
 ovl_set_dir_cache(d_inode(dentry), ((void*)0));

 cache = kzalloc(sizeof(struct ovl_dir_cache), GFP_KERNEL);
 if (!cache)
  return ERR_PTR(-ENOMEM);

 cache->refcount = 1;
 INIT_LIST_HEAD(&cache->entries);
 cache->root = RB_ROOT;

 res = ovl_dir_read_merged(dentry, &cache->entries, &cache->root);
 if (res) {
  ovl_cache_free(&cache->entries);
  kfree(cache);
  return ERR_PTR(res);
 }

 cache->version = ovl_dentry_version_get(dentry);
 ovl_set_dir_cache(d_inode(dentry), cache);

 return cache;
}

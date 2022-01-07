
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct ovl_dir_cache {scalar_t__ version; int entries; int root; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct ovl_dir_cache* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int OVL_IMPURE ;
 int OVL_XATTR_IMPURE ;
 int d_inode (struct dentry*) ;
 int kfree (struct ovl_dir_cache*) ;
 struct ovl_dir_cache* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;
 int ovl_cache_free (int *) ;
 int ovl_clear_flag (int ,int ) ;
 int ovl_dentry_upper (struct dentry*) ;
 scalar_t__ ovl_dentry_version_get (struct dentry*) ;
 struct ovl_dir_cache* ovl_dir_cache (int ) ;
 int ovl_dir_cache_free (int ) ;
 int ovl_dir_read_impure (struct path*,int *,int *) ;
 int ovl_do_removexattr (int ,int ) ;
 int ovl_drop_write (struct dentry*) ;
 int ovl_set_dir_cache (int ,struct ovl_dir_cache*) ;
 int ovl_want_write (struct dentry*) ;

__attribute__((used)) static struct ovl_dir_cache *ovl_cache_get_impure(struct path *path)
{
 int res;
 struct dentry *dentry = path->dentry;
 struct ovl_dir_cache *cache;

 cache = ovl_dir_cache(d_inode(dentry));
 if (cache && ovl_dentry_version_get(dentry) == cache->version)
  return cache;


 ovl_dir_cache_free(d_inode(dentry));
 ovl_set_dir_cache(d_inode(dentry), ((void*)0));

 cache = kzalloc(sizeof(struct ovl_dir_cache), GFP_KERNEL);
 if (!cache)
  return ERR_PTR(-ENOMEM);

 res = ovl_dir_read_impure(path, &cache->entries, &cache->root);
 if (res) {
  ovl_cache_free(&cache->entries);
  kfree(cache);
  return ERR_PTR(res);
 }
 if (list_empty(&cache->entries)) {




  if (!ovl_want_write(dentry)) {
   ovl_do_removexattr(ovl_dentry_upper(dentry),
        OVL_XATTR_IMPURE);
   ovl_drop_write(dentry);
  }
  ovl_clear_flag(OVL_IMPURE, d_inode(dentry));
  kfree(cache);
  return ((void*)0);
 }

 cache->version = ovl_dentry_version_get(dentry);
 ovl_set_dir_cache(d_inode(dentry), cache);

 return cache;
}

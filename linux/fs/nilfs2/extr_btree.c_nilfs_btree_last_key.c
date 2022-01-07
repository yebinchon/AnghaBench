
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int ENOMEM ;
 struct nilfs_btree_path* nilfs_btree_alloc_path () ;
 int nilfs_btree_do_lookup_last (struct nilfs_bmap const*,struct nilfs_btree_path*,int *,int *) ;
 int nilfs_btree_free_path (struct nilfs_btree_path*) ;

__attribute__((used)) static int nilfs_btree_last_key(const struct nilfs_bmap *btree, __u64 *keyp)
{
 struct nilfs_btree_path *path;
 int ret;

 path = nilfs_btree_alloc_path();
 if (path == ((void*)0))
  return -ENOMEM;

 ret = nilfs_btree_do_lookup_last(btree, path, keyp, ((void*)0));

 nilfs_btree_free_path(path);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int ENOENT ;
 int ENOMEM ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int buffer_dirty (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_bmap_dirty (struct nilfs_bmap*) ;
 int nilfs_bmap_set_dirty (struct nilfs_bmap*) ;
 struct nilfs_btree_path* nilfs_btree_alloc_path () ;
 int nilfs_btree_do_lookup (struct nilfs_bmap*,struct nilfs_btree_path*,int ,int *,int,int ) ;
 int nilfs_btree_free_path (struct nilfs_btree_path*) ;
 int nilfs_btree_get_block (struct nilfs_bmap*,int ,struct buffer_head**) ;

__attribute__((used)) static int nilfs_btree_mark(struct nilfs_bmap *btree, __u64 key, int level)
{
 struct buffer_head *bh;
 struct nilfs_btree_path *path;
 __u64 ptr;
 int ret;

 path = nilfs_btree_alloc_path();
 if (path == ((void*)0))
  return -ENOMEM;

 ret = nilfs_btree_do_lookup(btree, path, key, &ptr, level + 1, 0);
 if (ret < 0) {
  WARN_ON(ret == -ENOENT);
  goto out;
 }
 ret = nilfs_btree_get_block(btree, ptr, &bh);
 if (ret < 0) {
  WARN_ON(ret == -ENOENT);
  goto out;
 }

 if (!buffer_dirty(bh))
  mark_buffer_dirty(bh);
 brelse(bh);
 if (!nilfs_bmap_dirty(btree))
  nilfs_bmap_set_dirty(btree);

 out:
 nilfs_btree_free_path(path);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int dummy; } ;
struct rb_entry {int dummy; } ;


 struct rb_entry* __lookup_rb_tree_fast (struct rb_entry*,unsigned int) ;
 struct rb_entry* __lookup_rb_tree_slow (struct rb_root_cached*,unsigned int) ;

struct rb_entry *f2fs_lookup_rb_tree(struct rb_root_cached *root,
    struct rb_entry *cached_re, unsigned int ofs)
{
 struct rb_entry *re;

 re = __lookup_rb_tree_fast(cached_re, ofs);
 if (!re)
  return __lookup_rb_tree_slow(root, ofs);

 return re;
}

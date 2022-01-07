
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int inocache_hashsize; struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {int dummy; } ;



__attribute__((used)) static inline struct jffs2_inode_cache *
first_inode_chain(int *i, struct jffs2_sb_info *c)
{
 for (; *i < c->inocache_hashsize; (*i)++) {
  if (c->inocache_list[*i])
   return c->inocache_list[*i];
 }
 return ((void*)0);
}

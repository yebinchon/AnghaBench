
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_cache {struct jffs2_inode_cache* next; } ;


 struct jffs2_inode_cache* first_inode_chain (int*,struct jffs2_sb_info*) ;

__attribute__((used)) static inline struct jffs2_inode_cache *
next_inode(int *i, struct jffs2_inode_cache *ic, struct jffs2_sb_info *c)
{

 if (ic->next)
  return ic->next;
 (*i)++;
 return first_inode_chain(i, c);
}

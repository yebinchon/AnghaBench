
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_raw_node_ref {struct jffs2_raw_node_ref* next_in_ino; } ;
struct jffs2_inode_cache {int dummy; } ;



__attribute__((used)) static inline struct jffs2_inode_cache *jffs2_raw_ref_to_ic(struct jffs2_raw_node_ref *raw)
{
 while(raw->next_in_ino)
  raw = raw->next_in_ino;



 return ((struct jffs2_inode_cache *)raw);
}

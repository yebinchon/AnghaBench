
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {int version; int blk_addr; int ino; int nid; } ;



__attribute__((used)) static inline void copy_node_info(struct node_info *dst,
      struct node_info *src)
{
 dst->nid = src->nid;
 dst->ino = src->ino;
 dst->blk_addr = src->blk_addr;
 dst->version = src->version;

}

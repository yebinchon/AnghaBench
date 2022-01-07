
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {void** nid; } ;
struct TYPE_3__ {void** i_nid; } ;
struct f2fs_node {TYPE_2__ in; TYPE_1__ i; } ;
typedef int nid_t ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int NODE ;
 int NODE_DIR1_BLOCK ;
 void* cpu_to_le32 (int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static inline int set_nid(struct page *p, int off, nid_t nid, bool i)
{
 struct f2fs_node *rn = F2FS_NODE(p);

 f2fs_wait_on_page_writeback(p, NODE, 1, 1);

 if (i)
  rn->i.i_nid[off - NODE_DIR1_BLOCK] = cpu_to_le32(nid);
 else
  rn->in.nid[off] = cpu_to_le32(nid);
 return set_page_dirty(p);
}

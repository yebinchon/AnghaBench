
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int * nid; } ;
struct TYPE_3__ {int * i_nid; } ;
struct f2fs_node {TYPE_2__ in; TYPE_1__ i; } ;
typedef int nid_t ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int NODE_DIR1_BLOCK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline nid_t get_nid(struct page *p, int off, bool i)
{
 struct f2fs_node *rn = F2FS_NODE(p);

 if (i)
  return le32_to_cpu(rn->i.i_nid[off - NODE_DIR1_BLOCK]);
 return le32_to_cpu(rn->in.nid[off]);
}

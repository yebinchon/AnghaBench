
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int flag; } ;
struct f2fs_node {TYPE_1__ footer; } ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int is_node(struct page *page, int type)
{
 struct f2fs_node *rn = F2FS_NODE(page);
 return le32_to_cpu(rn->footer.flag) & (1 << type);
}

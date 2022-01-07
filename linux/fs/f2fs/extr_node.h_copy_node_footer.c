
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_footer {int dummy; } ;
struct f2fs_node {int footer; } ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void copy_node_footer(struct page *dst, struct page *src)
{
 struct f2fs_node *src_rn = F2FS_NODE(src);
 struct f2fs_node *dst_rn = F2FS_NODE(dst);
 memcpy(&dst_rn->footer, &src_rn->footer, sizeof(struct node_footer));
}

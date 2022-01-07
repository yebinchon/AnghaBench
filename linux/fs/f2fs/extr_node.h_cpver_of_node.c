
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int cp_ver; } ;
struct f2fs_node {TYPE_1__ footer; } ;
typedef int __u64 ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline __u64 cpver_of_node(struct page *node_page)
{
 struct f2fs_node *rn = F2FS_NODE(node_page);
 return le64_to_cpu(rn->footer.cp_ver);
}

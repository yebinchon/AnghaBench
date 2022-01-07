
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_extent_list {TYPE_1__* l_recs; int l_next_free_rec; } ;
struct TYPE_2__ {int e_cpos; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,TYPE_1__*) ;

__attribute__((used)) static inline u32 ocfs2_sum_rightmost_rec(struct ocfs2_extent_list *el)
{
 int i;

 i = le16_to_cpu(el->l_next_free_rec) - 1;

 return le32_to_cpu(el->l_recs[i].e_cpos) +
  ocfs2_rec_clusters(el, &el->l_recs[i]);
}

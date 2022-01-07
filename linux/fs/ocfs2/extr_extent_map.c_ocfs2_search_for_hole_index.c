
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_search_for_hole_index(struct ocfs2_extent_list *el,
           u32 v_cluster)
{
 int i;
 struct ocfs2_extent_rec *rec;

 for(i = 0; i < le16_to_cpu(el->l_next_free_rec); i++) {
  rec = &el->l_recs[i];

  if (v_cluster < le32_to_cpu(rec->e_cpos))
   break;
 }

 return i;
}

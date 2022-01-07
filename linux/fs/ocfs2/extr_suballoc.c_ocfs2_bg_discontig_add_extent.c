
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_extent_list {int l_next_free_rec; struct ocfs2_extent_rec* l_recs; void* l_count; } ;
struct ocfs2_group_desc {int bg_free_bits_count; int bg_bits; struct ocfs2_extent_list bg_list; } ;
struct ocfs2_extent_rec {void* e_leaf_clusters; int e_cpos; int e_blkno; } ;
struct ocfs2_chain_list {int cl_bpc; } ;


 int BUG_ON (int) ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 int le16_add_cpu (int *,int) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int ocfs2_extent_recs_per_gd (int ) ;
 int ocfs2_supports_discontig_bg (struct ocfs2_super*) ;

__attribute__((used)) static void ocfs2_bg_discontig_add_extent(struct ocfs2_super *osb,
       struct ocfs2_group_desc *bg,
       struct ocfs2_chain_list *cl,
       u64 p_blkno, unsigned int clusters)
{
 struct ocfs2_extent_list *el = &bg->bg_list;
 struct ocfs2_extent_rec *rec;

 BUG_ON(!ocfs2_supports_discontig_bg(osb));
 if (!el->l_next_free_rec)
  el->l_count = cpu_to_le16(ocfs2_extent_recs_per_gd(osb->sb));
 rec = &el->l_recs[le16_to_cpu(el->l_next_free_rec)];
 rec->e_blkno = cpu_to_le64(p_blkno);
 rec->e_cpos = cpu_to_le32(le16_to_cpu(bg->bg_bits) /
      le16_to_cpu(cl->cl_bpc));
 rec->e_leaf_clusters = cpu_to_le16(clusters);
 le16_add_cpu(&bg->bg_bits, clusters * le16_to_cpu(cl->cl_bpc));
 le16_add_cpu(&bg->bg_free_bits_count,
       clusters * le16_to_cpu(cl->cl_bpc));
 le16_add_cpu(&el->l_next_free_rec, 1);
}

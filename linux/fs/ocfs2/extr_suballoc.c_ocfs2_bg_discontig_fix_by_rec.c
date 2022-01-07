
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_suballoc_result {unsigned int sr_bit_offset; unsigned int sr_blkno; unsigned int sr_bits; } ;
struct ocfs2_extent_rec {int e_blkno; int e_leaf_clusters; int e_cpos; } ;
struct ocfs2_chain_list {int cl_bpc; } ;


 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int le64_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_bg_discontig_fix_by_rec(struct ocfs2_suballoc_result *res,
      struct ocfs2_extent_rec *rec,
      struct ocfs2_chain_list *cl)
{
 unsigned int bpc = le16_to_cpu(cl->cl_bpc);
 unsigned int bitoff = le32_to_cpu(rec->e_cpos) * bpc;
 unsigned int bitcount = le16_to_cpu(rec->e_leaf_clusters) * bpc;

 if (res->sr_bit_offset < bitoff)
  return 0;
 if (res->sr_bit_offset >= (bitoff + bitcount))
  return 0;
 res->sr_blkno = le64_to_cpu(rec->e_blkno) +
  (res->sr_bit_offset - bitoff);
 if ((res->sr_bit_offset + res->sr_bits) > (bitoff + bitcount))
  res->sr_bits = (bitoff + bitcount) - res->sr_bit_offset;
 return 1;
}

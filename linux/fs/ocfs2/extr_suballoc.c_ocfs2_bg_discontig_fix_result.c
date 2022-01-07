
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_suballoc_result {scalar_t__ sr_bg_blkno; scalar_t__ sr_bit_offset; scalar_t__ sr_blkno; } ;
struct TYPE_7__ {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;
struct ocfs2_group_desc {TYPE_3__ bg_list; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_chain_list {int dummy; } ;
struct TYPE_6__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct ocfs2_alloc_context {TYPE_4__* ac_inode; TYPE_1__* ac_bh; } ;
struct TYPE_8__ {int i_sb; } ;
struct TYPE_5__ {scalar_t__ b_data; } ;


 int OCFS2_SB (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ ocfs2_bg_discontig_fix_by_rec (struct ocfs2_suballoc_result*,struct ocfs2_extent_rec*,struct ocfs2_chain_list*) ;
 scalar_t__ ocfs2_is_cluster_bitmap (TYPE_4__*) ;
 int ocfs2_supports_discontig_bg (int ) ;

__attribute__((used)) static void ocfs2_bg_discontig_fix_result(struct ocfs2_alloc_context *ac,
       struct ocfs2_group_desc *bg,
       struct ocfs2_suballoc_result *res)
{
 int i;
 u64 bg_blkno = res->sr_bg_blkno;
 struct ocfs2_extent_rec *rec;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)ac->ac_bh->b_data;
 struct ocfs2_chain_list *cl = &di->id2.i_chain;

 if (ocfs2_is_cluster_bitmap(ac->ac_inode)) {
  res->sr_blkno = 0;
  return;
 }

 res->sr_blkno = res->sr_bg_blkno + res->sr_bit_offset;
 res->sr_bg_blkno = 0;
 if (!ocfs2_supports_discontig_bg(OCFS2_SB(ac->ac_inode->i_sb)) ||
     !bg->bg_list.l_next_free_rec)
  return;

 for (i = 0; i < le16_to_cpu(bg->bg_list.l_next_free_rec); i++) {
  rec = &bg->bg_list.l_recs[i];
  if (ocfs2_bg_discontig_fix_by_rec(res, rec, cl)) {
   res->sr_bg_blkno = bg_blkno;
   break;
  }
 }
}

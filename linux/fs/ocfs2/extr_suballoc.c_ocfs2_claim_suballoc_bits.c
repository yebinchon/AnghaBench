
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u64 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct ocfs2_suballoc_result {void* sr_bg_blkno; } ;
struct TYPE_10__ {int i_chain; } ;
struct TYPE_8__ {int i_total; int i_used; } ;
struct TYPE_9__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_4__ id2; TYPE_3__ id1; int i_blkno; } ;
struct ocfs2_chain_list {TYPE_5__* cl_recs; int cl_next_free_rec; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; scalar_t__ ac_bits_wanted; size_t ac_chain; int ac_disable_chain_relink; void* ac_last_group; TYPE_6__* ac_inode; TYPE_1__* ac_bh; } ;
typedef int handle_t ;
struct TYPE_12__ {int i_sb; } ;
struct TYPE_11__ {int c_free; } ;
struct TYPE_7__ {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_error (int ,char*,unsigned long long,scalar_t__,scalar_t__) ;
 size_t ocfs2_find_victim_chain (struct ocfs2_chain_list*) ;
 void* ocfs2_group_from_res (struct ocfs2_suballoc_result*) ;
 scalar_t__ ocfs2_is_cluster_bitmap (TYPE_6__*) ;
 int ocfs2_search_chain (struct ocfs2_alloc_context*,int *,scalar_t__,scalar_t__,struct ocfs2_suballoc_result*,size_t*) ;
 int ocfs2_search_one_group (struct ocfs2_alloc_context*,int *,scalar_t__,scalar_t__,struct ocfs2_suballoc_result*,size_t*) ;
 int trace_ocfs2_claim_suballoc_bits (size_t) ;

__attribute__((used)) static int ocfs2_claim_suballoc_bits(struct ocfs2_alloc_context *ac,
         handle_t *handle,
         u32 bits_wanted,
         u32 min_bits,
         struct ocfs2_suballoc_result *res)
{
 int status;
 u16 victim, i;
 u16 bits_left = 0;
 u64 hint = ac->ac_last_group;
 struct ocfs2_chain_list *cl;
 struct ocfs2_dinode *fe;

 BUG_ON(ac->ac_bits_given >= ac->ac_bits_wanted);
 BUG_ON(bits_wanted > (ac->ac_bits_wanted - ac->ac_bits_given));
 BUG_ON(!ac->ac_bh);

 fe = (struct ocfs2_dinode *) ac->ac_bh->b_data;



 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));

 if (le32_to_cpu(fe->id1.bitmap1.i_used) >=
     le32_to_cpu(fe->id1.bitmap1.i_total)) {
  status = ocfs2_error(ac->ac_inode->i_sb,
         "Chain allocator dinode %llu has %u used bits but only %u total\n",
         (unsigned long long)le64_to_cpu(fe->i_blkno),
         le32_to_cpu(fe->id1.bitmap1.i_used),
         le32_to_cpu(fe->id1.bitmap1.i_total));
  goto bail;
 }

 res->sr_bg_blkno = hint;
 if (res->sr_bg_blkno) {




  status = ocfs2_search_one_group(ac, handle, bits_wanted,
      min_bits, res, &bits_left);
  if (!status)
   goto set_hint;
  if (status < 0 && status != -ENOSPC) {
   mlog_errno(status);
   goto bail;
  }
 }

 cl = (struct ocfs2_chain_list *) &fe->id2.i_chain;

 victim = ocfs2_find_victim_chain(cl);
 ac->ac_chain = victim;

 status = ocfs2_search_chain(ac, handle, bits_wanted, min_bits,
        res, &bits_left);
 if (!status) {
  if (ocfs2_is_cluster_bitmap(ac->ac_inode))
   hint = res->sr_bg_blkno;
  else
   hint = ocfs2_group_from_res(res);
  goto set_hint;
 }
 if (status < 0 && status != -ENOSPC) {
  mlog_errno(status);
  goto bail;
 }

 trace_ocfs2_claim_suballoc_bits(victim);





 ac->ac_disable_chain_relink = 1;
 for (i = 0; i < le16_to_cpu(cl->cl_next_free_rec); i ++) {
  if (i == victim)
   continue;
  if (!cl->cl_recs[i].c_free)
   continue;

  ac->ac_chain = i;
  status = ocfs2_search_chain(ac, handle, bits_wanted, min_bits,
         res, &bits_left);
  if (!status) {
   hint = ocfs2_group_from_res(res);
   break;
  }
  if (status < 0 && status != -ENOSPC) {
   mlog_errno(status);
   goto bail;
  }
 }

set_hint:
 if (status != -ENOSPC) {



  if (bits_left < min_bits)
   ac->ac_last_group = 0;
  else
   ac->ac_last_group = hint;
 }

bail:
 if (status)
  mlog_errno(status);
 return status;
}

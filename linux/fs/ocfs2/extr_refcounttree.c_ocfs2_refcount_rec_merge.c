
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_block {int dummy; } ;
typedef enum ocfs2_ref_rec_contig { ____Placeholder_ocfs2_ref_rec_contig } ocfs2_ref_rec_contig ;


 int BUG_ON (int) ;
 int REF_CONTIG_LEFT ;
 int REF_CONTIG_LEFTRIGHT ;
 int REF_CONTIG_NONE ;
 int ocfs2_refcount_rec_contig (struct ocfs2_refcount_block*,int) ;
 int ocfs2_rotate_refcount_rec_left (struct ocfs2_refcount_block*,int) ;

__attribute__((used)) static void ocfs2_refcount_rec_merge(struct ocfs2_refcount_block *rb,
         int index)
{
 enum ocfs2_ref_rec_contig contig =
    ocfs2_refcount_rec_contig(rb, index);

 if (contig == REF_CONTIG_NONE)
  return;

 if (contig == REF_CONTIG_LEFT || contig == REF_CONTIG_LEFTRIGHT) {
  BUG_ON(index == 0);
  index--;
 }

 ocfs2_rotate_refcount_rec_left(rb, index);

 if (contig == REF_CONTIG_LEFTRIGHT)
  ocfs2_rotate_refcount_rec_left(rb, index);
}

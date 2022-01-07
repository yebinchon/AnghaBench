
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_refcount_list {int * rl_recs; int rl_used; } ;


 int ENOSPC ;
 int le16_to_cpu (int ) ;
 int ocfs2_get_ref_rec_low_cpos (int *) ;
 scalar_t__ ocfs2_refcount_rec_no_intersect (int *,int *) ;

__attribute__((used)) static int ocfs2_find_refcount_split_pos(struct ocfs2_refcount_list *rl,
      u32 *split_pos, int *split_index)
{
 int num_used = le16_to_cpu(rl->rl_used);
 int delta, middle = num_used / 2;

 for (delta = 0; delta < middle; delta++) {

  if (ocfs2_refcount_rec_no_intersect(
     &rl->rl_recs[middle - delta - 1],
     &rl->rl_recs[middle - delta])) {
   *split_index = middle - delta;
   break;
  }


  if ((middle + delta + 1) == num_used)
   continue;


  if (ocfs2_refcount_rec_no_intersect(
     &rl->rl_recs[middle + delta],
     &rl->rl_recs[middle + delta + 1])) {
   *split_index = middle + delta + 1;
   break;
  }
 }

 if (delta >= middle)
  return -ENOSPC;

 *split_pos = ocfs2_get_ref_rec_low_cpos(&rl->rl_recs[*split_index]);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_truncate_log {TYPE_1__* tl_recs; int tl_used; } ;
struct TYPE_2__ {int t_clusters; int t_start; } ;


 int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_truncate_log_can_coalesce(struct ocfs2_truncate_log *tl,
        unsigned int new_start)
{
 unsigned int tail_index;
 unsigned int current_tail;


 if (!le16_to_cpu(tl->tl_used))
  return 0;

 tail_index = le16_to_cpu(tl->tl_used) - 1;
 current_tail = le32_to_cpu(tl->tl_recs[tail_index].t_start);
 current_tail += le32_to_cpu(tl->tl_recs[tail_index].t_clusters);

 return current_tail == new_start;
}

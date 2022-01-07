
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cs_etm_traceid_queue {size_t last_branch_pos; struct branch_stack* last_branch; struct branch_stack* last_branch_rb; } ;
struct cs_etm_queue {TYPE_2__* etm; } ;
struct branch_stack {size_t nr; int * entries; } ;
struct branch_entry {int dummy; } ;
struct TYPE_3__ {size_t last_branch_sz; } ;
struct TYPE_4__ {TYPE_1__ synth_opts; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline
void cs_etm__copy_last_branch_rb(struct cs_etm_queue *etmq,
     struct cs_etm_traceid_queue *tidq)
{
 struct branch_stack *bs_src = tidq->last_branch_rb;
 struct branch_stack *bs_dst = tidq->last_branch;
 size_t nr = 0;





 bs_dst->nr = bs_src->nr;




 if (!bs_src->nr)
  return;






 nr = etmq->etm->synth_opts.last_branch_sz - tidq->last_branch_pos;
 memcpy(&bs_dst->entries[0],
        &bs_src->entries[tidq->last_branch_pos],
        sizeof(struct branch_entry) * nr);
 if (bs_src->nr >= etmq->etm->synth_opts.last_branch_sz) {
  memcpy(&bs_dst->entries[nr],
         &bs_src->entries[0],
         sizeof(struct branch_entry) * tidq->last_branch_pos);
 }
}

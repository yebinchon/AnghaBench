
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ocfs2_chain_list {int cl_next_free_rec; TYPE_1__* cl_recs; } ;
struct TYPE_2__ {int c_free; } ;


 int BUG_ON (int) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline u16 ocfs2_find_victim_chain(struct ocfs2_chain_list *cl)
{
 u16 curr, best;

 BUG_ON(!cl->cl_next_free_rec);

 best = curr = 0;
 while (curr < le16_to_cpu(cl->cl_next_free_rec)) {
  if (le32_to_cpu(cl->cl_recs[curr].c_free) >
      le32_to_cpu(cl->cl_recs[best].c_free))
   best = curr;
  curr++;
 }

 BUG_ON(best >= le16_to_cpu(cl->cl_next_free_rec));
 return best;
}

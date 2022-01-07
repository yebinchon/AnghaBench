
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct smc_link {size_t wr_tx_cnt; TYPE_1__* wr_tx_pends; } ;
struct TYPE_2__ {scalar_t__ wr_id; } ;



__attribute__((used)) static inline int smc_wr_tx_find_pending_index(struct smc_link *link, u64 wr_id)
{
 u32 i;

 for (i = 0; i < link->wr_tx_cnt; i++) {
  if (link->wr_tx_pends[i].wr_id == wr_id)
   return i;
 }
 return link->wr_tx_cnt;
}

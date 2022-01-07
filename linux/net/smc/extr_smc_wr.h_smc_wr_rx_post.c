
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct smc_link {TYPE_1__* wr_rx_ibs; int roce_qp; int wr_rx_cnt; scalar_t__ wr_rx_id; } ;
struct TYPE_2__ {scalar_t__ wr_id; } ;


 size_t do_div (scalar_t__,int ) ;
 int ib_post_recv (int ,TYPE_1__*,int *) ;

__attribute__((used)) static inline int smc_wr_rx_post(struct smc_link *link)
{
 int rc;
 u64 wr_id, temp_wr_id;
 u32 index;

 wr_id = ++link->wr_rx_id;
 temp_wr_id = wr_id;
 index = do_div(temp_wr_id, link->wr_rx_cnt);
 link->wr_rx_ibs[index].wr_id = wr_id;
 rc = ib_post_recv(link->roce_qp, &link->wr_rx_ibs[index], ((void*)0));
 return rc;
}

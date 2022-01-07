
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t w_nr; } ;
struct rds_ib_connection {int * i_recvs; TYPE_1__ i_recv_ring; } ;


 int rds_ib_recv_clear_one (struct rds_ib_connection*,int *) ;

void rds_ib_recv_clear_ring(struct rds_ib_connection *ic)
{
 u32 i;

 for (i = 0; i < ic->i_recv_ring.w_nr; i++)
  rds_ib_recv_clear_one(ic, &ic->i_recvs[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int i_ack_flags; } ;


 int IB_ACK_IN_FLIGHT ;
 int clear_bit (int ,int *) ;
 int rds_ib_attempt_ack (struct rds_ib_connection*) ;

void rds_ib_ack_send_complete(struct rds_ib_connection *ic)
{
 clear_bit(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
 rds_ib_attempt_ack(ic);
}

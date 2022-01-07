
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int i_ack_flags; int i_credits; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;


 int IB_ACK_REQUESTED ;
 int IB_GET_POST_CREDITS (int ) ;
 int IB_SET_POST_CREDITS (unsigned int) ;
 int atomic_add (int ,int *) ;
 int atomic_read (int *) ;
 int set_bit (int ,int *) ;

void rds_ib_advertise_credits(struct rds_connection *conn, unsigned int posted)
{
 struct rds_ib_connection *ic = conn->c_transport_data;

 if (posted == 0)
  return;

 atomic_add(IB_SET_POST_CREDITS(posted), &ic->i_credits);
 if (IB_GET_POST_CREDITS(atomic_read(&ic->i_credits)) >= 16)
  set_bit(IB_ACK_REQUESTED, &ic->i_ack_flags);
}

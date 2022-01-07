
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int m_flags; int m_flush_wait; } ;


 int RDS_MSG_MAPPED ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;

void rds_message_wait(struct rds_message *rm)
{
 wait_event_interruptible(rm->m_flush_wait,
   !test_bit(RDS_MSG_MAPPED, &rm->m_flags));
}

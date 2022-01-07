
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_waitq; int c_flags; } ;


 int RDS_RECV_REFILL ;
 int clear_bit (int ,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void release_refill(struct rds_connection *conn)
{
 clear_bit(RDS_RECV_REFILL, &conn->c_flags);






 if (waitqueue_active(&conn->c_waitq))
  wake_up_all(&conn->c_waitq);
}

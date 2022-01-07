
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_waitq; int cp_flags; } ;


 int RDS_IN_XMIT ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void release_in_xmit(struct rds_conn_path *cp)
{
 clear_bit(RDS_IN_XMIT, &cp->cp_flags);
 smp_mb__after_atomic();






 if (waitqueue_active(&cp->cp_waitq))
  wake_up_all(&cp->cp_waitq);
}

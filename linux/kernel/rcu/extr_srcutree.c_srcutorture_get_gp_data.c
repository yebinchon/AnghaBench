
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_gp_seq; } ;
typedef enum rcutorture_type { ____Placeholder_rcutorture_type } rcutorture_type ;


 int SRCU_FLAVOR ;
 unsigned long rcu_seq_current (int *) ;

void srcutorture_get_gp_data(enum rcutorture_type test_type,
        struct srcu_struct *ssp, int *flags,
        unsigned long *gp_seq)
{
 if (test_type != SRCU_FLAVOR)
  return;
 *flags = 0;
 *gp_seq = rcu_seq_current(&ssp->srcu_gp_seq);
}

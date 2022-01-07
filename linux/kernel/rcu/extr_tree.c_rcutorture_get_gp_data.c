
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum rcutorture_type { ____Placeholder_rcutorture_type } rcutorture_type ;
struct TYPE_2__ {int gp_seq; int gp_flags; } ;



 int READ_ONCE (int ) ;
 unsigned long rcu_seq_current (int *) ;
 TYPE_1__ rcu_state ;

void rcutorture_get_gp_data(enum rcutorture_type test_type, int *flags,
       unsigned long *gp_seq)
{
 switch (test_type) {
 case 128:
  *flags = READ_ONCE(rcu_state.gp_flags);
  *gp_seq = rcu_seq_current(&rcu_state.gp_seq);
  break;
 default:
  break;
 }
}

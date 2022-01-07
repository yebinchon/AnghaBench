
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_gp_seq_needed_exp; int srcu_gp_seq; } ;


 int READ_ONCE (int ) ;
 unsigned long SRCU_INTERVAL ;
 scalar_t__ ULONG_CMP_LT (int ,int ) ;

__attribute__((used)) static unsigned long srcu_get_delay(struct srcu_struct *ssp)
{
 if (ULONG_CMP_LT(READ_ONCE(ssp->srcu_gp_seq),
    READ_ONCE(ssp->srcu_gp_seq_needed_exp)))
  return 0;
 return SRCU_INTERVAL;
}

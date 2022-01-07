
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_long_t ;


 int atomic_long_set (int *,long) ;

__attribute__((used)) static inline void smc_wr_tx_set_wr_id(atomic_long_t *wr_tx_id, long val)
{
 atomic_long_set(wr_tx_id, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int wr_tx_id; } ;


 long atomic_long_inc_return (int *) ;

__attribute__((used)) static inline long smc_wr_tx_get_next_wr_id(struct smc_link *link)
{
 return atomic_long_inc_return(&link->wr_tx_id);
}

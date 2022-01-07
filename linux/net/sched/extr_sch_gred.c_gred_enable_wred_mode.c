
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched {int flags; } ;


 int GRED_WRED_MODE ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static inline void gred_enable_wred_mode(struct gred_sched *table)
{
 __set_bit(GRED_WRED_MODE, &table->flags);
}

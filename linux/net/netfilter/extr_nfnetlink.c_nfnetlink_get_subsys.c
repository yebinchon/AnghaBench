
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct nfnetlink_subsystem {int dummy; } ;
struct TYPE_2__ {int subsys; } ;


 size_t NFNL_SUBSYS_COUNT ;
 size_t NFNL_SUBSYS_ID (int ) ;
 struct nfnetlink_subsystem const* rcu_dereference (int ) ;
 TYPE_1__* table ;

__attribute__((used)) static inline const struct nfnetlink_subsystem *nfnetlink_get_subsys(u16 type)
{
 u8 subsys_id = NFNL_SUBSYS_ID(type);

 if (subsys_id >= NFNL_SUBSYS_COUNT)
  return ((void*)0);

 return rcu_dereference(table[subsys_id].subsys);
}

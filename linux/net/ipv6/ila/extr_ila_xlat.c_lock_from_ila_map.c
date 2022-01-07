
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ila_net {int dummy; } ;
struct TYPE_3__ {int locator_match; } ;
struct TYPE_4__ {TYPE_1__ ip; } ;
struct ila_map {TYPE_2__ xp; } ;
typedef int spinlock_t ;


 int * ila_get_lock (struct ila_net*,int ) ;

__attribute__((used)) static inline spinlock_t *lock_from_ila_map(struct ila_net *ilan,
         struct ila_map *ila)
{
 return ila_get_lock(ilan, ila->xp.ip.locator_match);
}

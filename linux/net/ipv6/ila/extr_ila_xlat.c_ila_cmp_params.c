
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ila_xlat_params {scalar_t__ ifindex; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;
struct ila_map {TYPE_1__ xp; } ;



__attribute__((used)) static inline int ila_cmp_params(struct ila_map *ila,
     struct ila_xlat_params *xp)
{
 return (ila->xp.ifindex != xp->ifindex);
}

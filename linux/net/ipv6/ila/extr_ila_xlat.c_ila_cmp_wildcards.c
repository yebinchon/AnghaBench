
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifindex; } ;
struct ila_map {TYPE_1__ xp; } ;
struct ila_addr {int dummy; } ;



__attribute__((used)) static inline int ila_cmp_wildcards(struct ila_map *ila,
        struct ila_addr *iaddr, int ifindex)
{
 return (ila->xp.ifindex && ila->xp.ifindex != ifindex);
}

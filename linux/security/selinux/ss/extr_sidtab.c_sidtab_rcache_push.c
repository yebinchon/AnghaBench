
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sidtab {int dummy; } ;


 scalar_t__ SIDTAB_RCACHE_SIZE ;
 int sidtab_rcache_update (struct sidtab*,int ,scalar_t__) ;

__attribute__((used)) static void sidtab_rcache_push(struct sidtab *s, u32 index)
{
 sidtab_rcache_update(s, index, SIDTAB_RCACHE_SIZE - 1);
}

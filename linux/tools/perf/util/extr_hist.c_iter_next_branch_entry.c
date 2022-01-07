
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry_iter {int curr; int total; struct branch_info* priv; } ;
struct TYPE_2__ {int addr; int sym; int map; } ;
struct branch_info {TYPE_1__ to; } ;
struct addr_location {int addr; int sym; int map; } ;



__attribute__((used)) static int
iter_next_branch_entry(struct hist_entry_iter *iter, struct addr_location *al)
{
 struct branch_info *bi = iter->priv;
 int i = iter->curr;

 if (bi == ((void*)0))
  return 0;

 if (iter->curr >= iter->total)
  return 0;

 al->map = bi[i].to.map;
 al->sym = bi[i].to.sym;
 al->addr = bi[i].to.addr;
 return 1;
}

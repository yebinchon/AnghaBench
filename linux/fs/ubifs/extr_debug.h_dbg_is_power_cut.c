
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {TYPE_1__* dbg; } ;
struct TYPE_2__ {int pc_happened; } ;



__attribute__((used)) static inline int dbg_is_power_cut(const struct ubifs_info *c)
{
 return !!c->dbg->pc_happened;
}

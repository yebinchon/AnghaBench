
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {TYPE_1__* dbg; } ;
struct TYPE_4__ {scalar_t__ chk_index; } ;
struct TYPE_3__ {scalar_t__ chk_index; } ;


 TYPE_2__ ubifs_dbg ;

__attribute__((used)) static inline int dbg_is_chk_index(const struct ubifs_info *c)
{
 return !!(ubifs_dbg.chk_index || c->dbg->chk_index);
}

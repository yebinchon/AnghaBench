
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {TYPE_1__* dbg; } ;
struct TYPE_4__ {scalar_t__ tst_rcvry; } ;
struct TYPE_3__ {scalar_t__ tst_rcvry; } ;


 TYPE_2__ ubifs_dbg ;

__attribute__((used)) static inline int dbg_is_tst_rcvry(const struct ubifs_info *c)
{
 return !!(ubifs_dbg.tst_rcvry || c->dbg->tst_rcvry);
}

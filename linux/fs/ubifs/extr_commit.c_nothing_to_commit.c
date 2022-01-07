
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ znode; } ;
struct ubifs_info {scalar_t__ dirty_pn_cnt; scalar_t__ dirty_nn_cnt; int dirty_zn_cnt; TYPE_2__* nroot; TYPE_1__ zroot; scalar_t__ remounting_rw; scalar_t__ mounting; } ;
struct TYPE_4__ {int flags; } ;


 int DIRTY_CNODE ;
 scalar_t__ atomic_long_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 scalar_t__ ubifs_zn_dirty (scalar_t__) ;

__attribute__((used)) static int nothing_to_commit(struct ubifs_info *c)
{




 if (c->mounting || c->remounting_rw)
  return 0;





 if (c->zroot.znode && ubifs_zn_dirty(c->zroot.znode))
  return 0;
 if (c->nroot && test_bit(DIRTY_CNODE, &c->nroot->flags))
  return 0;

 ubifs_assert(c, atomic_long_read(&c->dirty_zn_cnt) == 0);
 ubifs_assert(c, c->dirty_pn_cnt == 0);
 ubifs_assert(c, c->dirty_nn_cnt == 0);

 return 1;
}

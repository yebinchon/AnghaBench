
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int search_start; int beg; int end; int inode; TYPE_1__* th; } ;
typedef TYPE_2__ reiserfs_blocknr_hint_t ;
struct TYPE_7__ {int k_objectid; int k_dir_id; } ;
struct TYPE_5__ {int t_super; } ;


 TYPE_4__* INODE_PKEY (int ) ;
 scalar_t__ TEST_OPTION (int ,int ) ;
 int displace_based_on_dirid ;
 int keyed_hash (char*,int) ;

__attribute__((used)) static inline void displace_large_file(reiserfs_blocknr_hint_t * hint)
{
 if (TEST_OPTION(displace_based_on_dirid, hint->th->t_super))
  hint->search_start =
      hint->beg +
      keyed_hash((char *)(&INODE_PKEY(hint->inode)->k_dir_id),
          4) % (hint->end - hint->beg);
 else
  hint->search_start =
      hint->beg +
      keyed_hash((char *)(&INODE_PKEY(hint->inode)->k_objectid),
          4) % (hint->end - hint->beg);
}

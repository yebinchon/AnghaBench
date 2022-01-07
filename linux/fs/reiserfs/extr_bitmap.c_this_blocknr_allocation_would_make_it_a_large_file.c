
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ block; TYPE_2__* th; } ;
typedef TYPE_3__ reiserfs_blocknr_hint_t ;
struct TYPE_6__ {scalar_t__ large_file_size; } ;
struct TYPE_9__ {TYPE_1__ s_alloc_options; } ;
struct TYPE_7__ {int t_super; } ;


 TYPE_5__* REISERFS_SB (int ) ;

__attribute__((used)) static inline int
this_blocknr_allocation_would_make_it_a_large_file(reiserfs_blocknr_hint_t *
         hint)
{
 return hint->block ==
     REISERFS_SB(hint->th->t_super)->s_alloc_options.large_file_size;
}

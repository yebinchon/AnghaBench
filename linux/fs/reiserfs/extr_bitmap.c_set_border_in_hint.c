
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_6__ {void* beg; void* end; scalar_t__ formatted_node; } ;
typedef TYPE_2__ reiserfs_blocknr_hint_t ;
typedef void* b_blocknr_t ;
struct TYPE_5__ {int border; } ;
struct TYPE_7__ {TYPE_1__ s_alloc_options; } ;


 TYPE_4__* REISERFS_SB (struct super_block*) ;
 int SB_BLOCK_COUNT (struct super_block*) ;

__attribute__((used)) static inline void set_border_in_hint(struct super_block *s,
          reiserfs_blocknr_hint_t * hint)
{
 b_blocknr_t border =
     SB_BLOCK_COUNT(s) / REISERFS_SB(s)->s_alloc_options.border;

 if (hint->formatted_node)
  hint->end = border - 1;
 else
  hint->beg = border;
}

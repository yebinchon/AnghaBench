
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int b_blocknr_t ;
struct TYPE_2__ {int retry; int in_journal_nohint; int in_journal_hint; } ;


 int PROC_INFO_INC (struct super_block*,int ) ;
 scalar_t__ reiserfs_in_journal (struct super_block*,unsigned int,int,int,int*) ;
 TYPE_1__ scan_bitmap ;

__attribute__((used)) static inline int is_block_in_journal(struct super_block *s, unsigned int bmap,
          int off, int *next)
{
 b_blocknr_t tmp;

 if (reiserfs_in_journal(s, bmap, off, 1, &tmp)) {
  if (tmp) {
   *next = tmp;
   PROC_INFO_INC(s, scan_bitmap.in_journal_hint);
  } else {
   (*next) = off + 1;
   PROC_INFO_INC(s, scan_bitmap.in_journal_nohint);
  }
  PROC_INFO_INC(s, scan_bitmap.retry);
  return 1;
 }
 return 0;
}

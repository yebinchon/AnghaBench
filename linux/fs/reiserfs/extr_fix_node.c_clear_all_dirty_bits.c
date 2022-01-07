
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;


 int reiserfs_prepare_for_journal (struct super_block*,struct buffer_head*,int ) ;

__attribute__((used)) static int clear_all_dirty_bits(struct super_block *s, struct buffer_head *bh)
{
 return reiserfs_prepare_for_journal(s, bh, 0);
}

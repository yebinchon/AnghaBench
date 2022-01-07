
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int j_current_jl; } ;


 TYPE_1__* SB_JOURNAL (struct super_block*) ;
 int alloc_journal_list (struct super_block*) ;

__attribute__((used)) static void journal_list_init(struct super_block *sb)
{
 SB_JOURNAL(sb)->j_current_jl = alloc_journal_list(sb);
}

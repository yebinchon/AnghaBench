
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {struct super_block* t_super; } ;
struct TYPE_2__ {struct reiserfs_transaction_handle* journal_info; } ;


 int BUG () ;
 TYPE_1__* current ;

__attribute__((used)) static inline int reiserfs_transaction_running(struct super_block *s)
{
 struct reiserfs_transaction_handle *th = current->journal_info;
 if (th && th->t_super == s)
  return 1;
 if (th && th->t_super == ((void*)0))
  BUG();
 return 0;
}

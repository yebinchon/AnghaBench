
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int tb_sb; } ;
struct TYPE_2__ {struct tree_balance* cur_tb; } ;


 TYPE_1__* REISERFS_SB (int ) ;
 int RFALSE (int ,char*) ;
 int check_before_balancing (struct tree_balance*) ;

__attribute__((used)) static inline void do_balance_starts(struct tree_balance *tb)
{
 RFALSE(check_before_balancing(tb), "PAP-12340: locked buffers in TB");



}

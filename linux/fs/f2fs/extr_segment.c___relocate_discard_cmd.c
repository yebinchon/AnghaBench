
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_cmd_control {int * pend_list; } ;
struct discard_cmd {int len; int list; } ;


 int list_move_tail (int *,int *) ;
 size_t plist_idx (int ) ;

__attribute__((used)) static void __relocate_discard_cmd(struct discard_cmd_control *dcc,
      struct discard_cmd *dc)
{
 list_move_tail(&dc->list, &dcc->pend_list[plist_idx(dc->len)]);
}

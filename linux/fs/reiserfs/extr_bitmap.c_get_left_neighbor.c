
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct treepath {int pos_in_item; } ;
struct item_head {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_3__ {int search_start; int formatted_node; struct treepath* path; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef int __le32 ;


 int I_UNFM_NUM (struct item_head*) ;
 int RFALSE (int,char*) ;
 int get_block_num (int *,int) ;
 struct buffer_head* get_last_bh (struct treepath*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 int * tp_item_body (struct treepath*) ;
 struct item_head* tp_item_head (struct treepath*) ;

__attribute__((used)) static int get_left_neighbor(reiserfs_blocknr_hint_t * hint)
{
 struct treepath *path;
 struct buffer_head *bh;
 struct item_head *ih;
 int pos_in_item;
 __le32 *item;
 int ret = 0;





 if (!hint->path)
  return 0;

 path = hint->path;
 bh = get_last_bh(path);
 RFALSE(!bh, "green-4002: Illegal path specified to get_left_neighbor");
 ih = tp_item_head(path);
 pos_in_item = path->pos_in_item;
 item = tp_item_body(path);

 hint->search_start = bh->b_blocknr;





 if (!hint->formatted_node && is_indirect_le_ih(ih)) {
  if (pos_in_item == I_UNFM_NUM(ih))
   pos_in_item--;
  while (pos_in_item >= 0) {
   int t = get_block_num(item, pos_in_item);
   if (t) {
    hint->search_start = t;
    ret = 1;
    break;
   }
   pos_in_item--;
  }
 }


 return ret;
}

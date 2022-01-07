
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int check_leaf_block_head (struct buffer_head*) ;
 int ih_item_body (struct buffer_head*,struct item_head*) ;
 struct item_head* item_head (struct buffer_head*,int ) ;
 int op_check_item (struct item_head*,int ) ;

void check_leaf(struct buffer_head *bh)
{
 int i;
 struct item_head *ih;

 if (!bh)
  return;
 check_leaf_block_head(bh);
 for (i = 0, ih = item_head(bh, 0); i < B_NR_ITEMS(bh); i++, ih++)
  op_check_item(ih, ih_item_body(bh, ih));
}

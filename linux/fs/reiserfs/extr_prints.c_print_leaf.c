
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int b_blocknr; int ih_key; } ;
struct buffer_head {int b_blocknr; int ih_key; } ;
struct block_head {int dummy; } ;


 struct block_head* B_BLK_HEAD (struct item_head*) ;
 int B_IS_ITEMS_LEVEL (struct item_head*) ;
 int PRINT_LEAF_ITEMS ;
 int blkh_nr_item (struct block_head*) ;
 int check_leaf (struct item_head*) ;
 int ih_item_body (struct item_head*,struct item_head*) ;
 struct item_head* item_head (struct item_head*,int ) ;
 int op_print_item (struct item_head*,int ) ;
 int printk (char*) ;
 int reiserfs_printk (char*,int,struct item_head*) ;

__attribute__((used)) static int print_leaf(struct buffer_head *bh, int print_mode, int first,
        int last)
{
 struct block_head *blkh;
 struct item_head *ih;
 int i, nr;
 int from, to;

 if (!B_IS_ITEMS_LEVEL(bh))
  return 1;

 check_leaf(bh);

 blkh = B_BLK_HEAD(bh);
 ih = item_head(bh, 0);
 nr = blkh_nr_item(blkh);

 printk
     ("\n===================================================================\n");
 reiserfs_printk("LEAF NODE (%ld) contains %z\n", bh->b_blocknr, bh);

 if (!(print_mode & PRINT_LEAF_ITEMS)) {
  reiserfs_printk("FIRST ITEM_KEY: %k, LAST ITEM KEY: %k\n",
    &(ih->ih_key), &((ih + nr - 1)->ih_key));
  return 0;
 }

 if (first < 0 || first > nr - 1)
  from = 0;
 else
  from = first;

 if (last < 0 || last > nr)
  to = nr;
 else
  to = last;

 ih += from;
 printk
     ("-------------------------------------------------------------------------------\n");
 printk
     ("|##|   type    |           key           | ilen | free_space | version | loc  |\n");
 for (i = from; i < to; i++, ih++) {
  printk
      ("-------------------------------------------------------------------------------\n");
  reiserfs_printk("|%2d| %h |\n", i, ih);
  if (print_mode & PRINT_LEAF_ITEMS)
   op_print_item(ih, ih_item_body(bh, ih));
 }

 printk
     ("===================================================================\n");

 return 0;
}

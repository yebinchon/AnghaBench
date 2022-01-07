
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int ITEMS ;
 int RADIX_TREE (int ,int ) ;
 int XA_MARK_0 ;
 int XA_MARK_1 ;
 int XA_MARK_2 ;
 int assert (int) ;
 int check_copied_tags (int *,unsigned long,unsigned long,unsigned long*,int,int ,int) ;
 int item_insert (int *,unsigned long) ;
 int item_kill_tree (int *) ;
 scalar_t__ item_lookup (int *,unsigned long) ;
 int item_tag_set (int *,unsigned long,int ) ;
 unsigned long rand () ;
 unsigned long tag_tagged_items (int *,unsigned long,unsigned long,unsigned long,int ,int ) ;
 int tree ;
 int verify_tag_consistency (int *,int) ;

void copy_tag_check(void)
{
 RADIX_TREE(tree, GFP_KERNEL);
 unsigned long idx[ITEMS];
 unsigned long start, end, count = 0, tagged, cur, tmp;
 int i;


 start = rand();
 end = rand();
 if (start > end && (rand() % 10)) {
  cur = start;
  start = end;
  end = cur;
 }


 cur = rand();
 if (cur & 1) {
  item_insert(&tree, start);
  if (cur & 2) {
   if (start <= end)
    count++;
   item_tag_set(&tree, start, 0);
  }
 }
 if (cur & 4) {
  item_insert(&tree, start-1);
  if (cur & 8)
   item_tag_set(&tree, start-1, 0);
 }
 if (cur & 16) {
  item_insert(&tree, end);
  if (cur & 32) {
   if (start <= end)
    count++;
   item_tag_set(&tree, end, 0);
  }
 }
 if (cur & 64) {
  item_insert(&tree, end+1);
  if (cur & 128)
   item_tag_set(&tree, end+1, 0);
 }

 for (i = 0; i < ITEMS; i++) {
  do {
   idx[i] = rand();
  } while (item_lookup(&tree, idx[i]));

  item_insert(&tree, idx[i]);
  if (rand() & 1) {
   item_tag_set(&tree, idx[i], 0);
   if (idx[i] >= start && idx[i] <= end)
    count++;
  }


 }


 tagged = tag_tagged_items(&tree, start, end, ITEMS, XA_MARK_0, XA_MARK_1);


 assert(tagged == count);
 check_copied_tags(&tree, start, end, idx, ITEMS, 0, 1);



 tmp = rand() % (count / 10 + 2);
 tagged = tag_tagged_items(&tree, start, end, tmp, XA_MARK_0, XA_MARK_2);
 assert(tagged == count);



 check_copied_tags(&tree, start, end, idx, ITEMS, 0, 2);
 verify_tag_consistency(&tree, 0);
 verify_tag_consistency(&tree, 1);
 verify_tag_consistency(&tree, 2);

 item_kill_tree(&tree);
}

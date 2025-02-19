
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int N ;



 int THRASH_SIZE ;
 int assert (int) ;
 int gang_check (struct radix_tree_root*,char*,int) ;
 int item_check_absent (struct radix_tree_root*,unsigned long) ;
 int item_check_present (struct radix_tree_root*,unsigned long) ;
 int item_delete (struct radix_tree_root*,unsigned long) ;
 int item_insert (struct radix_tree_root*,unsigned long) ;
 scalar_t__ item_lookup (struct radix_tree_root*,unsigned long) ;
 int item_tag_clear (struct radix_tree_root*,unsigned long,int) ;
 int item_tag_get (struct radix_tree_root*,unsigned long,int) ;
 int item_tag_set (struct radix_tree_root*,unsigned long,int) ;
 int printv (int,char*,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int rand () ;

__attribute__((used)) static void do_thrash(struct radix_tree_root *tree, char *thrash_state, int tag)
{
 int insert_chunk;
 int delete_chunk;
 int tag_chunk;
 int untag_chunk;
 int total_tagged = 0;
 int total_present = 0;

 for (insert_chunk = 1; insert_chunk < THRASH_SIZE; insert_chunk *= N)
 for (delete_chunk = 1; delete_chunk < THRASH_SIZE; delete_chunk *= N)
 for (tag_chunk = 1; tag_chunk < THRASH_SIZE; tag_chunk *= N)
 for (untag_chunk = 1; untag_chunk < THRASH_SIZE; untag_chunk *= N) {
  int i;
  unsigned long index;
  int nr_inserted = 0;
  int nr_deleted = 0;
  int nr_tagged = 0;
  int nr_untagged = 0;
  int actual_total_tagged;
  int actual_total_present;

  for (i = 0; i < insert_chunk; i++) {
   index = rand() % THRASH_SIZE;
   if (thrash_state[index] != 130)
    continue;
   item_check_absent(tree, index);
   item_insert(tree, index);
   assert(thrash_state[index] != 129);
   thrash_state[index] = 129;
   nr_inserted++;
   total_present++;
  }

  for (i = 0; i < delete_chunk; i++) {
   index = rand() % THRASH_SIZE;
   if (thrash_state[index] == 130)
    continue;
   item_check_present(tree, index);
   if (item_tag_get(tree, index, tag)) {
    assert(thrash_state[index] == 128);
    total_tagged--;
   } else {
    assert(thrash_state[index] == 129);
   }
   item_delete(tree, index);
   assert(thrash_state[index] != 130);
   thrash_state[index] = 130;
   nr_deleted++;
   total_present--;
  }

  for (i = 0; i < tag_chunk; i++) {
   index = rand() % THRASH_SIZE;
   if (thrash_state[index] != 129) {
    if (item_lookup(tree, index))
     assert(item_tag_get(tree, index, tag));
    continue;
   }
   item_tag_set(tree, index, tag);
   item_tag_set(tree, index, tag);
   assert(thrash_state[index] != 128);
   thrash_state[index] = 128;
   nr_tagged++;
   total_tagged++;
  }

  for (i = 0; i < untag_chunk; i++) {
   index = rand() % THRASH_SIZE;
   if (thrash_state[index] != 128)
    continue;
   item_check_present(tree, index);
   assert(item_tag_get(tree, index, tag));
   item_tag_clear(tree, index, tag);
   item_tag_clear(tree, index, tag);
   assert(thrash_state[index] != 129);
   thrash_state[index] = 129;
   nr_untagged++;
   total_tagged--;
  }

  actual_total_tagged = 0;
  actual_total_present = 0;
  for (index = 0; index < THRASH_SIZE; index++) {
   switch (thrash_state[index]) {
   case 130:
    item_check_absent(tree, index);
    break;
   case 129:
    item_check_present(tree, index);
    assert(!item_tag_get(tree, index, tag));
    actual_total_present++;
    break;
   case 128:
    item_check_present(tree, index);
    assert(item_tag_get(tree, index, tag));
    actual_total_present++;
    actual_total_tagged++;
    break;
   }
  }

  gang_check(tree, thrash_state, tag);

  printv(2, "%d(%d) %d(%d) %d(%d) %d(%d) / "
    "%d(%d) present, %d(%d) tagged\n",
   insert_chunk, nr_inserted,
   delete_chunk, nr_deleted,
   tag_chunk, nr_tagged,
   untag_chunk, nr_untagged,
   total_present, actual_total_present,
   total_tagged, actual_total_tagged);
 }
}

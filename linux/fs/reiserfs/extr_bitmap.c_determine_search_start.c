
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


struct super_block {int dummy; } ;
struct TYPE_21__ {scalar_t__ search_start; scalar_t__ formatted_node; scalar_t__ inode; TYPE_1__* th; scalar_t__ end; scalar_t__ beg; } ;
typedef TYPE_2__ reiserfs_blocknr_hint_t ;
struct TYPE_20__ {scalar_t__ displace_new_blocks; struct super_block* t_super; } ;
struct TYPE_19__ {scalar_t__ i_prealloc_block; } ;


 TYPE_18__* REISERFS_I (scalar_t__) ;
 scalar_t__ SB_BLOCK_COUNT (struct super_block*) ;
 scalar_t__ TEST_OPTION (int (*) (TYPE_2__*),struct super_block*) ;
 scalar_t__ concentrating_formatted_nodes (struct super_block*) ;
 int dirid_groups (TYPE_2__*) ;
 int displace_large_file (TYPE_2__*) ;
 int displace_new_packing_locality (TYPE_2__*) ;
 scalar_t__ displacing_large_files (struct super_block*) ;
 scalar_t__ displacing_new_packing_localities (struct super_block*) ;
 int get_left_neighbor (TYPE_2__*) ;
 int hash_formatted_node (TYPE_2__*) ;
 int hashed_formatted_nodes (TYPE_2__*) ;
 int hundredth_slices (TYPE_2__*) ;
 int new_hashed_relocation (TYPE_2__*) ;
 int oid_groups (TYPE_2__*) ;
 int old_hashed_relocation (TYPE_2__*) ;
 int old_way (TYPE_2__*) ;
 int reiserfs_hashed_relocation (struct super_block*) ;
 int reiserfs_no_unhashed_relocation (struct super_block*) ;
 int set_border_in_hint (struct super_block*,TYPE_2__*) ;
 scalar_t__ this_blocknr_allocation_would_make_it_a_large_file (TYPE_2__*) ;

__attribute__((used)) static void determine_search_start(reiserfs_blocknr_hint_t * hint,
       int amount_needed)
{
 struct super_block *s = hint->th->t_super;
 int unfm_hint;

 hint->beg = 0;
 hint->end = SB_BLOCK_COUNT(s) - 1;


 if (concentrating_formatted_nodes(s))
  set_border_in_hint(s, hint);
 if (displacing_large_files(s) && !hint->formatted_node
     && this_blocknr_allocation_would_make_it_a_large_file(hint)) {
  displace_large_file(hint);
  return;
 }





 if (hint->formatted_node && TEST_OPTION(hashed_formatted_nodes, s)) {
  hash_formatted_node(hint);
  return;
 }

 unfm_hint = get_left_neighbor(hint);
 if (TEST_OPTION(old_way, s)) {
  if (!hint->formatted_node) {
   if (!reiserfs_hashed_relocation(s))
    old_way(hint);
   else if (!reiserfs_no_unhashed_relocation(s))
    old_hashed_relocation(hint);

   if (hint->inode
       && hint->search_start <
       REISERFS_I(hint->inode)->i_prealloc_block)
    hint->search_start =
        REISERFS_I(hint->inode)->i_prealloc_block;
  }
  return;
 }


 if (TEST_OPTION(hundredth_slices, s)
     && !(displacing_large_files(s) && !hint->formatted_node)) {
  hundredth_slices(hint);
  return;
 }


 if (!unfm_hint && !hint->formatted_node &&
     TEST_OPTION(old_hashed_relocation, s)) {
  old_hashed_relocation(hint);
 }


 if ((!unfm_hint || hint->formatted_node) &&
     TEST_OPTION(new_hashed_relocation, s)) {
  new_hashed_relocation(hint);
 }


 if (!unfm_hint && !hint->formatted_node && TEST_OPTION(dirid_groups, s)) {
  dirid_groups(hint);
 }







 if (!unfm_hint && !hint->formatted_node && TEST_OPTION(oid_groups, s)) {
  oid_groups(hint);
 }
 return;
}

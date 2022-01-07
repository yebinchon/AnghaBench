
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int path_length; } ;
struct super_block {int dummy; } ;
struct reiserfs_key {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int B_IS_IN_TREE (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 scalar_t__ B_N_CHILD_NUM (struct buffer_head*,int) ;
 int FIRST_PATH_ELEMENT_OFFSET ;
 struct reiserfs_key const MAX_KEY ;
 struct reiserfs_key const MIN_KEY ;
 struct buffer_head* PATH_OFFSET_PBUFFER (struct treepath const*,int) ;
 int PATH_OFFSET_POSITION (struct treepath const*,int) ;
 int RFALSE (int,char*) ;
 scalar_t__ SB_ROOT_BLOCK (struct super_block const*) ;
 int buffer_uptodate (struct buffer_head*) ;
 struct reiserfs_key const* internal_key (struct buffer_head*,int) ;

inline const struct reiserfs_key *get_rkey(const struct treepath *chk_path,
        const struct super_block *sb)
{
 int position, path_offset = chk_path->path_length;
 struct buffer_head *parent;

 RFALSE(path_offset < FIRST_PATH_ELEMENT_OFFSET,
        "PAP-5030: invalid offset in the path");

 while (path_offset-- > FIRST_PATH_ELEMENT_OFFSET) {

  RFALSE(!buffer_uptodate
         (PATH_OFFSET_PBUFFER(chk_path, path_offset)),
         "PAP-5040: parent is not uptodate");


  if (!B_IS_IN_TREE
      (parent =
       PATH_OFFSET_PBUFFER(chk_path, path_offset)))
   return &MIN_KEY;

  if ((position =
       PATH_OFFSET_POSITION(chk_path,
       path_offset)) >
      B_NR_ITEMS(parent))
   return &MIN_KEY;




  if (B_N_CHILD_NUM(parent, position) !=
      PATH_OFFSET_PBUFFER(chk_path,
     path_offset + 1)->b_blocknr)
   return &MIN_KEY;





  if (position != B_NR_ITEMS(parent))
   return internal_key(parent, position);
 }


 if (PATH_OFFSET_PBUFFER(chk_path, FIRST_PATH_ELEMENT_OFFSET)->
     b_blocknr == SB_ROOT_BLOCK(sb))
  return &MAX_KEY;
 return &MIN_KEY;
}

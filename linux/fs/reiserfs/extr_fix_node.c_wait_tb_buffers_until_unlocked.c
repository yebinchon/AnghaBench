
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree_balance {int tb_sb; struct buffer_head** FEB; struct buffer_head** CFR; struct buffer_head** FR; struct buffer_head** R; scalar_t__* rnum; struct buffer_head** CFL; struct buffer_head** FL; struct buffer_head** L; scalar_t__* lnum; scalar_t__* insert_size; TYPE_1__* tb_path; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int path_length; } ;


 int CARRY_ON ;
 scalar_t__ FILESYSTEM_CHANGED_TB (struct tree_balance*) ;
 int ILLEGAL_PATH_ELEMENT_OFFSET ;
 int MAX_FEB_SIZE ;
 int MAX_HEIGHT ;
 struct buffer_head* PATH_OFFSET_PBUFFER (TYPE_1__*,int) ;
 struct buffer_head* PATH_PLAST_BUFFER (TYPE_1__*) ;
 int REPEAT_SEARCH ;
 int __wait_on_buffer (struct buffer_head*) ;
 int clear_all_dirty_bits (int ,struct buffer_head*) ;
 int reiserfs_warning (int ,char*,char*,struct buffer_head*) ;
 int reiserfs_write_lock_nested (int ,int) ;
 int reiserfs_write_unlock_nested (int ) ;
 int tb_buffer_sanity_check (int ,struct buffer_head*,char*,int) ;

__attribute__((used)) static int wait_tb_buffers_until_unlocked(struct tree_balance *tb)
{
 struct buffer_head *locked;



 int i;

 do {

  locked = ((void*)0);

  for (i = tb->tb_path->path_length;
       !locked && i > ILLEGAL_PATH_ELEMENT_OFFSET; i--) {
   if (PATH_OFFSET_PBUFFER(tb->tb_path, i)) {
    if (!clear_all_dirty_bits(tb->tb_sb,
         PATH_OFFSET_PBUFFER
         (tb->tb_path,
          i))) {
     locked =
         PATH_OFFSET_PBUFFER(tb->tb_path,
        i);
    }
   }
  }

  for (i = 0; !locked && i < MAX_HEIGHT && tb->insert_size[i];
       i++) {

   if (tb->lnum[i]) {

    if (tb->L[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->L[i],
              "L", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->L[i]))
      locked = tb->L[i];
    }

    if (!locked && tb->FL[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->FL[i],
              "FL", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->FL[i]))
      locked = tb->FL[i];
    }

    if (!locked && tb->CFL[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->CFL[i],
              "CFL", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->CFL[i]))
      locked = tb->CFL[i];
    }

   }

   if (!locked && (tb->rnum[i])) {

    if (tb->R[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->R[i],
              "R", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->R[i]))
      locked = tb->R[i];
    }

    if (!locked && tb->FR[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->FR[i],
              "FR", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->FR[i]))
      locked = tb->FR[i];
    }

    if (!locked && tb->CFR[i]) {
     tb_buffer_sanity_check(tb->tb_sb,
              tb->CFR[i],
              "CFR", i);
     if (!clear_all_dirty_bits
         (tb->tb_sb, tb->CFR[i]))
      locked = tb->CFR[i];
    }
   }
  }
  for (i = 0; !locked && i < MAX_FEB_SIZE; i++) {
   if (tb->FEB[i]) {
    if (!clear_all_dirty_bits
        (tb->tb_sb, tb->FEB[i]))
     locked = tb->FEB[i];
   }
  }

  if (locked) {
   int depth;
   depth = reiserfs_write_unlock_nested(tb->tb_sb);
   __wait_on_buffer(locked);
   reiserfs_write_lock_nested(tb->tb_sb, depth);
   if (FILESYSTEM_CHANGED_TB(tb))
    return REPEAT_SEARCH;
  }

 } while (locked);

 return CARRY_ON;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int rbytes; int pos_in_item; int * rnum; int * insert_size; int * R; int * rkey; int * CFR; int zeroes_num; int item_pos; int tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int DEH_SIZE ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,...) ;
 int buffer_info_init_right (struct tree_balance*,struct buffer_info*) ;
 int ih_entry_count (int ) ;
 int item_head (struct buffer_head*,int ) ;
 int leaf_paste_entries (struct buffer_info*,int ,int,int,struct reiserfs_de_head*,char const* const,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,int ,int,int ,char const* const,int ) ;
 int leaf_shift_right (struct tree_balance*,int ,int) ;
 int replace_key (struct tree_balance*,int ,int ,int ,int ) ;

__attribute__((used)) static void balance_leaf_paste_right_shift_dirent(struct tree_balance *tb,
         struct item_head * const ih,
         const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct buffer_info bi;
 int entry_count;

 RFALSE(tb->zeroes_num,
        "PAP-12145: invalid parameter in case of a directory");
 entry_count = ih_entry_count(item_head(tbS0, tb->item_pos));


 if (entry_count - tb->rbytes < tb->pos_in_item) {
  int paste_entry_position;

  RFALSE(tb->rbytes - 1 >= entry_count || !tb->insert_size[0],
         "PAP-12150: no enough of entries to shift to R[0]: "
         "rbytes=%d, entry_count=%d", tb->rbytes, entry_count);






  leaf_shift_right(tb, tb->rnum[0], tb->rbytes - 1);


  paste_entry_position = tb->pos_in_item - entry_count +
           tb->rbytes - 1;
  buffer_info_init_right(tb, &bi);
  leaf_paste_in_buffer(&bi, 0, paste_entry_position,
         tb->insert_size[0], body, tb->zeroes_num);


  leaf_paste_entries(&bi, 0, paste_entry_position, 1,
       (struct reiserfs_de_head *) body,
       body + DEH_SIZE, tb->insert_size[0]);


  if (paste_entry_position == 0)
   replace_key(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

  tb->insert_size[0] = 0;
  tb->pos_in_item++;
 } else {

  leaf_shift_right(tb, tb->rnum[0], tb->rbytes);
 }
}

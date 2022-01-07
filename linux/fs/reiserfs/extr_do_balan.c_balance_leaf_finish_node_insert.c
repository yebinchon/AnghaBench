
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int * lkey; scalar_t__* CFL; int item_pos; int zeroes_num; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int buffer_info_init_tbS0 (struct tree_balance*,struct buffer_info*) ;
 int leaf_insert_into_buf (struct buffer_info*,int ,struct item_head* const,char const* const,int ) ;
 int replace_key (struct tree_balance*,scalar_t__,int ,struct buffer_head*,int ) ;

__attribute__((used)) static void balance_leaf_finish_node_insert(struct tree_balance *tb,
         struct item_head * const ih,
         const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct buffer_info bi;
 buffer_info_init_tbS0(tb, &bi);
 leaf_insert_into_buf(&bi, tb->item_pos, ih, body, tb->zeroes_num);


 if (tb->item_pos == 0) {
  if (tb->CFL[0])
   replace_key(tb, tb->CFL[0], tb->lkey[0], tbS0, 0);

 }
}

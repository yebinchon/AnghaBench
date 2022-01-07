
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int vn_buf_size; char* vn_buf; int tb_path; int tb_sb; } ;


 int CARRY_ON ;
 scalar_t__ FILESYSTEM_CHANGED_TB (struct tree_balance*) ;
 int GFP_ATOMIC ;
 int GFP_NOFS ;
 int PATH_PLAST_BUFFER (int ) ;
 int REPEAT_SEARCH ;
 int __GFP_NOWARN ;
 int free_buffers_in_tb (struct tree_balance*) ;
 int get_virtual_node_size (int ,int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int) ;
 int schedule () ;

__attribute__((used)) static int get_mem_for_virtual_node(struct tree_balance *tb)
{
 int check_fs = 0;
 int size;
 char *buf;

 size = get_virtual_node_size(tb->tb_sb, PATH_PLAST_BUFFER(tb->tb_path));


 if (size > tb->vn_buf_size) {
  if (tb->vn_buf) {

   kfree(tb->vn_buf);

   check_fs = 1;
  }


  tb->vn_buf_size = size;


  buf = kmalloc(size, GFP_ATOMIC | __GFP_NOWARN);
  if (!buf) {






   free_buffers_in_tb(tb);
   buf = kmalloc(size, GFP_NOFS);
   if (!buf) {
    tb->vn_buf_size = 0;
   }
   tb->vn_buf = buf;
   schedule();
   return REPEAT_SEARCH;
  }

  tb->vn_buf = buf;
 }

 if (check_fs && FILESYSTEM_CHANGED_TB(tb))
  return REPEAT_SEARCH;

 return CARRY_ON;
}

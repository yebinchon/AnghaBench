
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_sb; struct buffer_head** thrown; } ;
struct buffer_head {int dummy; } ;


 int ARRAY_SIZE (struct buffer_head**) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int reiserfs_warning (int ,char*,char*) ;

__attribute__((used)) static void store_thrown(struct tree_balance *tb, struct buffer_head *bh)
{
 int i;

 if (buffer_dirty(bh))
  reiserfs_warning(tb->tb_sb, "reiserfs-12320",
     "called with dirty buffer");
 for (i = 0; i < ARRAY_SIZE(tb->thrown); i++)
  if (!tb->thrown[i]) {
   tb->thrown[i] = bh;
   get_bh(bh);
   return;
  }
 reiserfs_warning(tb->tb_sb, "reiserfs-12321",
    "too many thrown buffers");
}

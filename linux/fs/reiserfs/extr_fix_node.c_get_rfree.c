
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; struct buffer_head** FR; } ;
struct buffer_head {int dummy; } ;


 int B_N_CHILD (struct buffer_head*,int) ;
 int MAX_CHILD_SIZE (struct buffer_head*) ;
 int PATH_H_B_ITEM_ORDER (int ,int) ;
 struct buffer_head* PATH_H_PPARENT (int ,int) ;
 int dc_size (int ) ;

__attribute__((used)) static int get_rfree(struct tree_balance *tb, int h)
{
 struct buffer_head *r, *f;
 int order;

 if ((f = PATH_H_PPARENT(tb->tb_path, h)) == ((void*)0) ||
     (r = tb->FR[h]) == ((void*)0))
  return 0;

 if (f == r)
  order = PATH_H_B_ITEM_ORDER(tb->tb_path, h) + 1;
 else {
  order = 0;
  f = r;
 }

 return (MAX_CHILD_SIZE(f) - dc_size(B_N_CHILD(f, order)));

}

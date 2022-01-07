
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int * FR; int * R; } ;
struct buffer_info {int bi_position; int bi_parent; int bi_bh; struct tree_balance* tb; } ;


 int get_right_neighbor_position (struct tree_balance*,int ) ;

__attribute__((used)) static inline void buffer_info_init_right(struct tree_balance *tb,
                                          struct buffer_info *bi)
{
 bi->tb = tb;
 bi->bi_bh = tb->R[0];
 bi->bi_parent = tb->FR[0];
 bi->bi_position = get_right_neighbor_position(tb, 0);
}

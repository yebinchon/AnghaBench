
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; } ;
struct buffer_info {int bi_position; int bi_parent; int bi_bh; struct tree_balance* tb; } ;


 int PATH_H_POSITION (int ,int) ;
 int PATH_H_PPARENT (int ,int ) ;
 int PATH_PLAST_BUFFER (int ) ;

__attribute__((used)) static inline void buffer_info_init_tbS0(struct tree_balance *tb,
                                         struct buffer_info *bi)
{
 bi->tb = tb;
 bi->bi_bh = PATH_PLAST_BUFFER(tb->tb_path);
 bi->bi_parent = PATH_H_PPARENT(tb->tb_path, 0);
 bi->bi_position = PATH_H_POSITION(tb->tb_path, 1);
}

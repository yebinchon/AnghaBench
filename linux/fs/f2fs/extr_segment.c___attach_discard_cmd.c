
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int root; } ;
struct discard_cmd {int rb_node; } ;
struct block_device {int dummy; } ;
typedef int block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 struct discard_cmd* __create_discard_cmd (struct f2fs_sb_info*,struct block_device*,int ,int ,int ) ;
 int rb_insert_color_cached (int *,int *,int) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static struct discard_cmd *__attach_discard_cmd(struct f2fs_sb_info *sbi,
    struct block_device *bdev, block_t lstart,
    block_t start, block_t len,
    struct rb_node *parent, struct rb_node **p,
    bool leftmost)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 struct discard_cmd *dc;

 dc = __create_discard_cmd(sbi, bdev, lstart, start, len);

 rb_link_node(&dc->rb_node, parent, p);
 rb_insert_color_cached(&dc->rb_node, &dcc->root, leftmost);

 return dc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_sc_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int i_bmap; } ;


 TYPE_1__* NILFS_I (struct inode*) ;
 int nilfs_bmap_propagate (int ,struct buffer_head*) ;

__attribute__((used)) static int nilfs_collect_file_node(struct nilfs_sc_info *sci,
       struct buffer_head *bh,
       struct inode *inode)
{
 return nilfs_bmap_propagate(NILFS_I(inode)->i_bmap, bh);
}

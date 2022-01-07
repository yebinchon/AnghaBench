
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_sc_info {int sc_datablk_cnt; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __le64 ;
struct TYPE_2__ {int i_bmap; } ;


 TYPE_1__* NILFS_I (struct inode*) ;
 int nilfs_bmap_propagate (int ,struct buffer_head*) ;
 int nilfs_segctor_add_file_block (struct nilfs_sc_info*,struct buffer_head*,struct inode*,int) ;

__attribute__((used)) static int nilfs_collect_dat_data(struct nilfs_sc_info *sci,
      struct buffer_head *bh, struct inode *inode)
{
 int err;

 err = nilfs_bmap_propagate(NILFS_I(inode)->i_bmap, bh);
 if (err < 0)
  return err;

 err = nilfs_segctor_add_file_block(sci, bh, inode, sizeof(__le64));
 if (!err)
  sci->sc_datablk_cnt++;
 return err;
}

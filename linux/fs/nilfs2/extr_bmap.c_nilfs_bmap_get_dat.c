
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {struct inode* ns_dat; } ;
struct nilfs_bmap {TYPE_2__* b_inode; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;



struct inode *nilfs_bmap_get_dat(const struct nilfs_bmap *bmap)
{
 struct the_nilfs *nilfs = bmap->b_inode->i_sb->s_fs_info;

 return nilfs->ns_dat;
}

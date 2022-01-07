
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_pos; scalar_t__ i_attrs; scalar_t__ i_logstart; scalar_t__ i_start; scalar_t__ mmu_private; } ;


 TYPE_1__* MSDOS_I (struct inode*) ;

__attribute__((used)) static void fat_dummy_inode_init(struct inode *inode)
{

 MSDOS_I(inode)->mmu_private = 0;
 MSDOS_I(inode)->i_start = 0;
 MSDOS_I(inode)->i_logstart = 0;
 MSDOS_I(inode)->i_attrs = 0;
 MSDOS_I(inode)->i_pos = 0;
}

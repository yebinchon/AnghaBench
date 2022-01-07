
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct swap_info_struct {TYPE_3__* swap_file; struct block_device* bdev; } ;
struct block_device {TYPE_4__* bd_disk; } ;
struct TYPE_8__ {int node_id; } ;
struct TYPE_7__ {TYPE_2__* f_inode; } ;
struct TYPE_6__ {TYPE_1__* i_sb; } ;
struct TYPE_5__ {struct block_device* s_bdev; } ;


 int NUMA_NO_NODE ;

__attribute__((used)) static int swap_node(struct swap_info_struct *p)
{
 struct block_device *bdev;

 if (p->bdev)
  bdev = p->bdev;
 else
  bdev = p->swap_file->f_inode->i_sb->s_bdev;

 return bdev ? bdev->bd_disk->node_id : NUMA_NO_NODE;
}

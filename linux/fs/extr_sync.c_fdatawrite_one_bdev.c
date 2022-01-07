
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 int filemap_fdatawrite (int ) ;

__attribute__((used)) static void fdatawrite_one_bdev(struct block_device *bdev, void *arg)
{
 filemap_fdatawrite(bdev->bd_inode->i_mapping);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_1__* s_bdev; } ;
struct ext4_fsmap {scalar_t__ fmr_device; } ;
struct TYPE_6__ {TYPE_2__* journal_bdev; } ;
struct TYPE_5__ {int bd_dev; } ;
struct TYPE_4__ {int bd_dev; } ;


 TYPE_3__* EXT4_SB (struct super_block*) ;
 scalar_t__ UINT_MAX ;
 scalar_t__ new_encode_dev (int ) ;

__attribute__((used)) static bool ext4_getfsmap_is_valid_device(struct super_block *sb,
       struct ext4_fsmap *fm)
{
 if (fm->fmr_device == 0 || fm->fmr_device == UINT_MAX ||
     fm->fmr_device == new_encode_dev(sb->s_bdev->bd_dev))
  return 1;
 if (EXT4_SB(sb)->journal_bdev &&
     fm->fmr_device == new_encode_dev(EXT4_SB(sb)->journal_bdev->bd_dev))
  return 1;
 return 0;
}

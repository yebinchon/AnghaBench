
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_5__ {int fmr_owner; int fmr_length; int fmr_physical; } ;
struct ext4_fsmap {scalar_t__ fmr_physical; scalar_t__ fmr_flags; int fmr_owner; scalar_t__ fmr_length; } ;
struct ext4_getfsmap_info {TYPE_2__ gfi_high; int gfi_dev; struct ext4_fsmap gfi_low; } ;
struct TYPE_4__ {scalar_t__ j_blk_offset; scalar_t__ j_maxlen; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_6__ {TYPE_1__* s_journal; } ;


 int EXT4_FMR_OWN_LOG ;
 TYPE_3__* EXT4_SB (struct super_block*) ;
 int ext4_getfsmap_helper (struct super_block*,struct ext4_getfsmap_info*,struct ext4_fsmap*) ;
 int memset (TYPE_2__*,int,int) ;
 int trace_ext4_fsmap_high_key (struct super_block*,int ,int ,int ,int ,int ) ;
 int trace_ext4_fsmap_low_key (struct super_block*,int ,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int ext4_getfsmap_logdev(struct super_block *sb, struct ext4_fsmap *keys,
    struct ext4_getfsmap_info *info)
{
 journal_t *journal = EXT4_SB(sb)->s_journal;
 struct ext4_fsmap irec;


 info->gfi_low = keys[0];
 info->gfi_low.fmr_length = 0;

 memset(&info->gfi_high, 0xFF, sizeof(info->gfi_high));

 trace_ext4_fsmap_low_key(sb, info->gfi_dev, 0,
   info->gfi_low.fmr_physical,
   info->gfi_low.fmr_length,
   info->gfi_low.fmr_owner);

 trace_ext4_fsmap_high_key(sb, info->gfi_dev, 0,
   info->gfi_high.fmr_physical,
   info->gfi_high.fmr_length,
   info->gfi_high.fmr_owner);

 if (keys[0].fmr_physical > 0)
  return 0;


 irec.fmr_physical = journal->j_blk_offset;
 irec.fmr_length = journal->j_maxlen;
 irec.fmr_owner = EXT4_FMR_OWN_LOG;
 irec.fmr_flags = 0;

 return ext4_getfsmap_helper(sb, info, &irec);
}

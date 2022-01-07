
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fmr_physical; } ;
struct ext4_getfsmap_info {TYPE_1__ gfi_low; } ;
struct ext4_fsmap {scalar_t__ fmr_physical; } ;



__attribute__((used)) static bool ext4_getfsmap_rec_before_low_key(struct ext4_getfsmap_info *info,
          struct ext4_fsmap *rec)
{
 return rec->fmr_physical < info->gfi_low.fmr_physical;
}

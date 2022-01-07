
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_fsmap {scalar_t__ fmr_device; scalar_t__ fmr_physical; scalar_t__ fmr_owner; } ;



__attribute__((used)) static bool ext4_getfsmap_check_keys(struct ext4_fsmap *low_key,
         struct ext4_fsmap *high_key)
{
 if (low_key->fmr_device > high_key->fmr_device)
  return 0;
 if (low_key->fmr_device < high_key->fmr_device)
  return 1;

 if (low_key->fmr_physical > high_key->fmr_physical)
  return 0;
 if (low_key->fmr_physical < high_key->fmr_physical)
  return 1;

 if (low_key->fmr_owner > high_key->fmr_owner)
  return 0;
 if (low_key->fmr_owner < high_key->fmr_owner)
  return 1;

 return 0;
}

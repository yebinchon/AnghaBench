
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_fsmap {scalar_t__ fmr_length; scalar_t__ fmr_physical; } ;
typedef scalar_t__ ext4_fsblk_t ;



__attribute__((used)) static inline ext4_fsblk_t ext4_fsmap_next_pblk(struct ext4_fsmap *fmr)
{
 return fmr->fmr_physical + fmr->fmr_length;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct fsmap {int fmr_physical; int fmr_length; scalar_t__* fmr_reserved; scalar_t__ fmr_offset; int fmr_owner; int fmr_flags; int fmr_device; } ;
struct ext4_fsmap {int fmr_physical; int fmr_length; int fmr_owner; int fmr_flags; int fmr_device; } ;



void ext4_fsmap_from_internal(struct super_block *sb, struct fsmap *dest,
         struct ext4_fsmap *src)
{
 dest->fmr_device = src->fmr_device;
 dest->fmr_flags = src->fmr_flags;
 dest->fmr_physical = src->fmr_physical << sb->s_blocksize_bits;
 dest->fmr_owner = src->fmr_owner;
 dest->fmr_offset = 0;
 dest->fmr_length = src->fmr_length << sb->s_blocksize_bits;
 dest->fmr_reserved[0] = 0;
 dest->fmr_reserved[1] = 0;
 dest->fmr_reserved[2] = 0;
}

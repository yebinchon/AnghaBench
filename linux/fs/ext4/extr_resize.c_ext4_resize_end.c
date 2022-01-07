
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_ext4_flags; } ;


 int EXT4_FLAGS_RESIZING ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__after_atomic () ;

void ext4_resize_end(struct super_block *sb)
{
 clear_bit_unlock(EXT4_FLAGS_RESIZING, &EXT4_SB(sb)->s_ext4_flags);
 smp_mb__after_atomic();
}

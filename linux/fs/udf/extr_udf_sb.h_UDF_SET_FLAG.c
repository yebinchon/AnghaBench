
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;


 TYPE_1__* UDF_SB (struct super_block*) ;
 int set_bit (int,int *) ;

__attribute__((used)) static inline void UDF_SET_FLAG(struct super_block *sb, int flag)
{
 set_bit(flag, &UDF_SB(sb)->s_flags);
}

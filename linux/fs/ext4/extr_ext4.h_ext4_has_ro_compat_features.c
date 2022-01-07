
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {scalar_t__ s_feature_ro_compat; } ;


 TYPE_2__* EXT4_SB (struct super_block*) ;

__attribute__((used)) static inline bool ext4_has_ro_compat_features(struct super_block *sb)
{
 return (EXT4_SB(sb)->s_es->s_feature_ro_compat != 0);
}

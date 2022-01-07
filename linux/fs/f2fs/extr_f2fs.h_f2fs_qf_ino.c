
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* raw_super; } ;
struct TYPE_3__ {int * qf_ino; } ;


 int F2FS_MAX_QUOTAS ;
 TYPE_2__* F2FS_SB (struct super_block*) ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned long f2fs_qf_ino(struct super_block *sb, int type)
{
 if (type < F2FS_MAX_QUOTAS)
  return le32_to_cpu(F2FS_SB(sb)->raw_super->qf_ino[type]);
 return 0;
}

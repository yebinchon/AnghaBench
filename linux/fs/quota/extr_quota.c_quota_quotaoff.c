
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
struct TYPE_2__ {int (* quota_off ) (struct super_block*,int) ;int (* quota_disable ) (struct super_block*,int ) ;} ;


 int ENOSYS ;
 int qtype_enforce_flag (int) ;
 int stub1 (struct super_block*,int ) ;
 int stub2 (struct super_block*,int) ;

__attribute__((used)) static int quota_quotaoff(struct super_block *sb, int type)
{
 if (!sb->s_qcop->quota_off && !sb->s_qcop->quota_disable)
  return -ENOSYS;
 if (sb->s_qcop->quota_disable)
  return sb->s_qcop->quota_disable(sb, qtype_enforce_flag(type));
 return sb->s_qcop->quota_off(sb, type);
}

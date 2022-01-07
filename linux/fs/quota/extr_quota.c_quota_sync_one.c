
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_quota_types; TYPE_1__* s_qcop; } ;
struct TYPE_2__ {int (* quota_sync ) (struct super_block*,int) ;} ;


 int stub1 (struct super_block*,int) ;

__attribute__((used)) static void quota_sync_one(struct super_block *sb, void *arg)
{
 int type = *(int *)arg;

 if (sb->s_qcop && sb->s_qcop->quota_sync &&
     (sb->s_quota_types & (1 << type)))
  sb->s_qcop->quota_sync(sb, type);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quota_info {int flags; TYPE_1__* info; int * files; } ;
struct TYPE_2__ {int dqi_fmt_id; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_QUOTA_SYS_FILE ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOSYS ;
 unsigned int FS_QUOTA_GDQ_ACCT ;
 unsigned int FS_QUOTA_PDQ_ACCT ;
 unsigned int FS_QUOTA_UDQ_ACCT ;
 int MAXQUOTAS ;
 int dquot_disable (struct super_block*,int,int ) ;
 int dquot_enable (int ,int,int ,int ) ;
 unsigned int qtype_enforce_flag (int) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int sb_has_quota_usage_enabled (struct super_block*,int) ;

__attribute__((used)) static int dquot_quota_enable(struct super_block *sb, unsigned int flags)
{
 int ret;
 int type;
 struct quota_info *dqopt = sb_dqopt(sb);

 if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE))
  return -ENOSYS;

 flags &= ~(FS_QUOTA_UDQ_ACCT | FS_QUOTA_GDQ_ACCT | FS_QUOTA_PDQ_ACCT);
 if (!flags)
  return -EINVAL;
 for (type = 0; type < MAXQUOTAS; type++) {
  if (!(flags & qtype_enforce_flag(type)))
   continue;

  if (!sb_has_quota_usage_enabled(sb, type))
   return -EINVAL;
  ret = dquot_enable(dqopt->files[type], type,
       dqopt->info[type].dqi_fmt_id,
       DQUOT_LIMITS_ENABLED);
  if (ret < 0)
   goto out_err;
 }
 return 0;
out_err:

 for (type--; type >= 0; type--) {
  if (flags & qtype_enforce_flag(type))
   dquot_disable(sb, type, DQUOT_LIMITS_ENABLED);
 }

 if (ret == -EBUSY)
  ret = -EEXIST;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
struct path {int dummy; } ;
typedef int qid_t ;
struct TYPE_2__ {int (* quota_on ) (struct super_block*,int,int ,struct path const*) ;int (* quota_enable ) (struct super_block*,int ) ;} ;


 int ENOSYS ;
 scalar_t__ IS_ERR (struct path const*) ;
 int PTR_ERR (struct path const*) ;
 int qtype_enforce_flag (int) ;
 int stub1 (struct super_block*,int ) ;
 int stub2 (struct super_block*,int,int ,struct path const*) ;

__attribute__((used)) static int quota_quotaon(struct super_block *sb, int type, qid_t id,
           const struct path *path)
{
 if (!sb->s_qcop->quota_on && !sb->s_qcop->quota_enable)
  return -ENOSYS;
 if (sb->s_qcop->quota_enable)
  return sb->s_qcop->quota_enable(sb, qtype_enforce_flag(type));
 if (IS_ERR(path))
  return PTR_ERR(path);
 return sb->s_qcop->quota_on(sb, type, id, path);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_uid; TYPE_2__* i_sb; } ;
struct ima_rule_entry {int flags; int func; int mask; scalar_t__ fsmagic; TYPE_3__* lsm; int fowner; int (* fowner_op ) (int ,int ) ;int uid; int (* uid_op ) (int ,int ) ;int fsuuid; int fsname; } ;
struct cred {int euid; int uid; int suid; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;
struct TYPE_6__ {int rule; int type; } ;
struct TYPE_5__ {scalar_t__ s_magic; int s_uuid; TYPE_1__* s_type; } ;
struct TYPE_4__ {int name; } ;


 int Audit_equal ;
 int CAP_SETUID ;
 int IMA_EUID ;
 int IMA_FOWNER ;
 int IMA_FSMAGIC ;
 int IMA_FSNAME ;
 int IMA_FSUUID ;
 int IMA_FUNC ;
 int IMA_INMASK ;
 int IMA_MASK ;
 int IMA_UID ;
 int KEXEC_CMDLINE ;






 int MAX_LSM_RULES ;
 int POST_SETATTR ;
 int current ;
 scalar_t__ has_capability_noaudit (int ,int ) ;
 int security_filter_rule_match (int ,int ,int ,int ) ;
 int security_inode_getsecid (struct inode*,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int uuid_equal (int *,int *) ;

__attribute__((used)) static bool ima_match_rules(struct ima_rule_entry *rule, struct inode *inode,
       const struct cred *cred, u32 secid,
       enum ima_hooks func, int mask)
{
 int i;

 if (func == KEXEC_CMDLINE) {
  if ((rule->flags & IMA_FUNC) && (rule->func == func))
   return 1;
  return 0;
 }
 if ((rule->flags & IMA_FUNC) &&
     (rule->func != func && func != POST_SETATTR))
  return 0;
 if ((rule->flags & IMA_MASK) &&
     (rule->mask != mask && func != POST_SETATTR))
  return 0;
 if ((rule->flags & IMA_INMASK) &&
     (!(rule->mask & mask) && func != POST_SETATTR))
  return 0;
 if ((rule->flags & IMA_FSMAGIC)
     && rule->fsmagic != inode->i_sb->s_magic)
  return 0;
 if ((rule->flags & IMA_FSNAME)
     && strcmp(rule->fsname, inode->i_sb->s_type->name))
  return 0;
 if ((rule->flags & IMA_FSUUID) &&
     !uuid_equal(&rule->fsuuid, &inode->i_sb->s_uuid))
  return 0;
 if ((rule->flags & IMA_UID) && !rule->uid_op(cred->uid, rule->uid))
  return 0;
 if (rule->flags & IMA_EUID) {
  if (has_capability_noaudit(current, CAP_SETUID)) {
   if (!rule->uid_op(cred->euid, rule->uid)
       && !rule->uid_op(cred->suid, rule->uid)
       && !rule->uid_op(cred->uid, rule->uid))
    return 0;
  } else if (!rule->uid_op(cred->euid, rule->uid))
   return 0;
 }

 if ((rule->flags & IMA_FOWNER) &&
     !rule->fowner_op(inode->i_uid, rule->fowner))
  return 0;
 for (i = 0; i < MAX_LSM_RULES; i++) {
  int rc = 0;
  u32 osid;

  if (!rule->lsm[i].rule)
   continue;

  switch (i) {
  case 131:
  case 133:
  case 132:
   security_inode_getsecid(inode, &osid);
   rc = security_filter_rule_match(osid,
       rule->lsm[i].type,
       Audit_equal,
       rule->lsm[i].rule);
   break;
  case 128:
  case 130:
  case 129:
   rc = security_filter_rule_match(secid,
       rule->lsm[i].type,
       Audit_equal,
       rule->lsm[i].rule);
  default:
   break;
  }
  if (!rc)
   return 0;
 }
 return 1;
}

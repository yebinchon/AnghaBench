
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int fsgid; int sgid; int egid; int gid; int fsuid; int suid; int euid; int uid; } ;
struct audit_names {int dummy; } ;
struct audit_field {int val; int op; } ;
struct audit_context {int dummy; } ;
 int WARN (int,char*) ;
 int audit_compare_gid (int ,struct audit_names*,struct audit_field*,struct audit_context*) ;
 int audit_compare_uid (int ,struct audit_names*,struct audit_field*,struct audit_context*) ;
 int audit_get_loginuid (struct task_struct*) ;
 int audit_gid_comparator (int ,int ,int ) ;
 int audit_uid_comparator (int ,int ,int ) ;

__attribute__((used)) static int audit_field_compare(struct task_struct *tsk,
          const struct cred *cred,
          struct audit_field *f,
          struct audit_context *ctx,
          struct audit_names *name)
{
 switch (f->val) {

 case 129:
  return audit_compare_uid(cred->uid, name, f, ctx);
 case 138:
  return audit_compare_gid(cred->gid, name, f, ctx);
 case 144:
  return audit_compare_uid(cred->euid, name, f, ctx);
 case 147:
  return audit_compare_gid(cred->egid, name, f, ctx);
 case 150:
  return audit_compare_uid(audit_get_loginuid(tsk), name, f, ctx);
 case 133:
  return audit_compare_uid(cred->suid, name, f, ctx);
 case 135:
  return audit_compare_gid(cred->sgid, name, f, ctx);
 case 141:
  return audit_compare_uid(cred->fsuid, name, f, ctx);
 case 142:
  return audit_compare_gid(cred->fsgid, name, f, ctx);

 case 132:
  return audit_uid_comparator(cred->uid, f->op,
         audit_get_loginuid(tsk));
 case 131:
  return audit_uid_comparator(cred->uid, f->op, cred->euid);
 case 128:
  return audit_uid_comparator(cred->uid, f->op, cred->suid);
 case 130:
  return audit_uid_comparator(cred->uid, f->op, cred->fsuid);

 case 152:
  return audit_uid_comparator(audit_get_loginuid(tsk), f->op,
         cred->euid);
 case 149:
  return audit_uid_comparator(audit_get_loginuid(tsk), f->op,
         cred->suid);
 case 151:
  return audit_uid_comparator(audit_get_loginuid(tsk), f->op,
         cred->fsuid);

 case 143:
  return audit_uid_comparator(cred->euid, f->op, cred->suid);
 case 145:
  return audit_uid_comparator(cred->euid, f->op, cred->fsuid);

 case 134:
  return audit_uid_comparator(cred->suid, f->op, cred->fsuid);

 case 140:
  return audit_gid_comparator(cred->gid, f->op, cred->egid);
 case 137:
  return audit_gid_comparator(cred->gid, f->op, cred->sgid);
 case 139:
  return audit_gid_comparator(cred->gid, f->op, cred->fsgid);

 case 146:
  return audit_gid_comparator(cred->egid, f->op, cred->sgid);
 case 148:
  return audit_gid_comparator(cred->egid, f->op, cred->fsgid);

 case 136:
  return audit_gid_comparator(cred->sgid, f->op, cred->fsgid);
 default:
  WARN(1, "Missing AUDIT_COMPARE define.  Report as a bug\n");
  return 0;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long uid_t ;
struct TYPE_4__ {char* from; } ;
typedef TYPE_1__ substring_t ;
struct ima_template_desc {int num_fields; int fields; int fmt; } ;
struct ima_rule_entry {scalar_t__ action; int flags; unsigned long fsmagic; struct ima_template_desc* template; void* func; int pcr; void* fowner; int * fowner_op; void* uid; int * uid_op; int fsuuid; int fsname; int mask; } ;
struct audit_buffer {int dummy; } ;


 scalar_t__ APPRAISE ;
 scalar_t__ AUDIT ;
 int AUDIT_INTEGRITY_POLICY_RULE ;
 int AUDIT_OBJ_ROLE ;
 int AUDIT_OBJ_TYPE ;
 int AUDIT_OBJ_USER ;
 int AUDIT_SUBJ_ROLE ;
 int AUDIT_SUBJ_TYPE ;
 int AUDIT_SUBJ_USER ;
 void* BPRM_CHECK ;
 void* CREDS_CHECK ;
 scalar_t__ DONT_APPRAISE ;
 scalar_t__ DONT_HASH ;
 scalar_t__ DONT_MEASURE ;
 int EINVAL ;
 int ENOMEM ;
 void* FILE_CHECK ;
 void* FIRMWARE_CHECK ;
 int GFP_KERNEL ;
 scalar_t__ HASH ;
 int IMA_DIGSIG_REQUIRED ;
 int IMA_EUID ;
 int IMA_FOWNER ;
 int IMA_FSMAGIC ;
 int IMA_FSNAME ;
 int IMA_FSUUID ;
 int IMA_FUNC ;
 int IMA_INMASK ;
 int IMA_MASK ;
 int IMA_MODSIG_ALLOWED ;
 int IMA_PCR ;
 int IMA_PERMIT_DIRECTIO ;
 int IMA_UID ;
 int INVALID_PCR (int ) ;
 void* INVALID_UID ;
 void* KEXEC_CMDLINE ;
 void* KEXEC_INITRAMFS_CHECK ;
 void* KEXEC_KERNEL_CHECK ;
 int LSM_OBJ_ROLE ;
 int LSM_OBJ_TYPE ;
 int LSM_OBJ_USER ;
 int LSM_SUBJ_ROLE ;
 int LSM_SUBJ_TYPE ;
 int LSM_SUBJ_USER ;
 int MAX_OPT_ARGS ;
 int MAY_APPEND ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ MEASURE ;
 void* MMAP_CHECK ;
 void* MODULE_CHECK ;
 void* POLICY_CHECK ;
 scalar_t__ UNKNOWN ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int) ;
 int check_template_modsig (struct ima_template_desc*) ;
 int current_user_ns () ;
 int ima_appraise_flag (void*) ;
 int ima_hook_supports_modsig (void*) ;
 int ima_log_string (struct audit_buffer*,char*,char*) ;
 int ima_log_string_op (struct audit_buffer*,char*,char*,int *) ;
 int ima_lsm_rule_init (struct ima_rule_entry*,TYPE_1__*,int ,int ) ;
 struct ima_template_desc* ima_template_desc_current () ;
 struct audit_buffer* integrity_audit_log_start (int ,int ,int ) ;
 int kstrdup (char*,int ) ;
 int kstrtoint (char*,int,int *) ;
 int kstrtoul (char*,int,unsigned long*) ;
 struct ima_template_desc* lookup_template_desc (char*) ;
 void* make_kuid (int ,unsigned long) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int policy_tokens ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int temp_ima_appraise ;
 int template_desc_init_fields (int ,int *,int *) ;
 int uid_eq ;
 int uid_gt ;
 int uid_lt ;
 int uid_valid (void*) ;
 int uuid_is_null (int *) ;
 int uuid_parse (char*,int *) ;

__attribute__((used)) static int ima_parse_rule(char *rule, struct ima_rule_entry *entry)
{
 struct audit_buffer *ab;
 char *from;
 char *p;
 bool uid_token;
 struct ima_template_desc *template_desc;
 int result = 0;

 ab = integrity_audit_log_start(audit_context(), GFP_KERNEL,
           AUDIT_INTEGRITY_POLICY_RULE);

 entry->uid = INVALID_UID;
 entry->fowner = INVALID_UID;
 entry->uid_op = &uid_eq;
 entry->fowner_op = &uid_eq;
 entry->action = UNKNOWN;
 while ((p = strsep(&rule, " \t")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  unsigned long lnum;

  if (result < 0)
   break;
  if ((*p == '\0') || (*p == ' ') || (*p == '\t'))
   continue;
  token = match_token(p, policy_tokens, args);
  switch (token) {
  case 140:
   ima_log_string(ab, "action", "measure");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = MEASURE;
   break;
  case 154:
   ima_log_string(ab, "action", "dont_measure");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = DONT_MEASURE;
   break;
  case 159:
   ima_log_string(ab, "action", "appraise");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = APPRAISE;
   break;
  case 156:
   ima_log_string(ab, "action", "dont_appraise");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = DONT_APPRAISE;
   break;
  case 157:
   ima_log_string(ab, "action", "audit");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = AUDIT;
   break;
  case 142:
   ima_log_string(ab, "action", "hash");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = HASH;
   break;
  case 155:
   ima_log_string(ab, "action", "dont_hash");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = DONT_HASH;
   break;
  case 143:
   ima_log_string(ab, "func", args[0].from);

   if (entry->func)
    result = -EINVAL;

   if (strcmp(args[0].from, "FILE_CHECK") == 0)
    entry->func = FILE_CHECK;

   else if (strcmp(args[0].from, "PATH_CHECK") == 0)
    entry->func = FILE_CHECK;
   else if (strcmp(args[0].from, "MODULE_CHECK") == 0)
    entry->func = MODULE_CHECK;
   else if (strcmp(args[0].from, "FIRMWARE_CHECK") == 0)
    entry->func = FIRMWARE_CHECK;
   else if ((strcmp(args[0].from, "FILE_MMAP") == 0)
    || (strcmp(args[0].from, "MMAP_CHECK") == 0))
    entry->func = MMAP_CHECK;
   else if (strcmp(args[0].from, "BPRM_CHECK") == 0)
    entry->func = BPRM_CHECK;
   else if (strcmp(args[0].from, "CREDS_CHECK") == 0)
    entry->func = CREDS_CHECK;
   else if (strcmp(args[0].from, "KEXEC_KERNEL_CHECK") ==
     0)
    entry->func = KEXEC_KERNEL_CHECK;
   else if (strcmp(args[0].from, "KEXEC_INITRAMFS_CHECK")
     == 0)
    entry->func = KEXEC_INITRAMFS_CHECK;
   else if (strcmp(args[0].from, "POLICY_CHECK") == 0)
    entry->func = POLICY_CHECK;
   else if (strcmp(args[0].from, "KEXEC_CMDLINE") == 0)
    entry->func = KEXEC_CMDLINE;
   else
    result = -EINVAL;
   if (!result)
    entry->flags |= IMA_FUNC;
   break;
  case 141:
   ima_log_string(ab, "mask", args[0].from);

   if (entry->mask)
    result = -EINVAL;

   from = args[0].from;
   if (*from == '^')
    from++;

   if ((strcmp(from, "MAY_EXEC")) == 0)
    entry->mask = MAY_EXEC;
   else if (strcmp(from, "MAY_WRITE") == 0)
    entry->mask = MAY_WRITE;
   else if (strcmp(from, "MAY_READ") == 0)
    entry->mask = MAY_READ;
   else if (strcmp(from, "MAY_APPEND") == 0)
    entry->mask = MAY_APPEND;
   else
    result = -EINVAL;
   if (!result)
    entry->flags |= (*args[0].from == '^')
         ? IMA_INMASK : IMA_MASK;
   break;
  case 146:
   ima_log_string(ab, "fsmagic", args[0].from);

   if (entry->fsmagic) {
    result = -EINVAL;
    break;
   }

   result = kstrtoul(args[0].from, 16, &entry->fsmagic);
   if (!result)
    entry->flags |= IMA_FSMAGIC;
   break;
  case 145:
   ima_log_string(ab, "fsname", args[0].from);

   entry->fsname = kstrdup(args[0].from, GFP_KERNEL);
   if (!entry->fsname) {
    result = -ENOMEM;
    break;
   }
   result = 0;
   entry->flags |= IMA_FSNAME;
   break;
  case 144:
   ima_log_string(ab, "fsuuid", args[0].from);

   if (!uuid_is_null(&entry->fsuuid)) {
    result = -EINVAL;
    break;
   }

   result = uuid_parse(args[0].from, &entry->fsuuid);
   if (!result)
    entry->flags |= IMA_FSUUID;
   break;
  case 129:
  case 151:
   entry->uid_op = &uid_gt;

  case 128:
  case 150:
   if ((token == 128) || (token == 150))
    entry->uid_op = &uid_lt;

  case 130:
  case 152:
   uid_token = (token == 130) ||
        (token == 129) ||
        (token == 128);

   ima_log_string_op(ab, uid_token ? "uid" : "euid",
       args[0].from, entry->uid_op);

   if (uid_valid(entry->uid)) {
    result = -EINVAL;
    break;
   }

   result = kstrtoul(args[0].from, 10, &lnum);
   if (!result) {
    entry->uid = make_kuid(current_user_ns(),
             (uid_t) lnum);
    if (!uid_valid(entry->uid) ||
        (uid_t)lnum != lnum)
     result = -EINVAL;
    else
     entry->flags |= uid_token
         ? IMA_UID : IMA_EUID;
   }
   break;
  case 148:
   entry->fowner_op = &uid_gt;

  case 147:
   if (token == 147)
    entry->fowner_op = &uid_lt;

  case 149:
   ima_log_string_op(ab, "fowner", args[0].from,
       entry->fowner_op);

   if (uid_valid(entry->fowner)) {
    result = -EINVAL;
    break;
   }

   result = kstrtoul(args[0].from, 10, &lnum);
   if (!result) {
    entry->fowner = make_kuid(current_user_ns(), (uid_t)lnum);
    if (!uid_valid(entry->fowner) || (((uid_t)lnum) != lnum))
     result = -EINVAL;
    else
     entry->flags |= IMA_FOWNER;
   }
   break;
  case 137:
   ima_log_string(ab, "obj_user", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_OBJ_USER,
         AUDIT_OBJ_USER);
   break;
  case 139:
   ima_log_string(ab, "obj_role", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_OBJ_ROLE,
         AUDIT_OBJ_ROLE);
   break;
  case 138:
   ima_log_string(ab, "obj_type", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_OBJ_TYPE,
         AUDIT_OBJ_TYPE);
   break;
  case 132:
   ima_log_string(ab, "subj_user", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_SUBJ_USER,
         AUDIT_SUBJ_USER);
   break;
  case 134:
   ima_log_string(ab, "subj_role", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_SUBJ_ROLE,
         AUDIT_SUBJ_ROLE);
   break;
  case 133:
   ima_log_string(ab, "subj_type", args[0].from);
   result = ima_lsm_rule_init(entry, args,
         LSM_SUBJ_TYPE,
         AUDIT_SUBJ_TYPE);
   break;
  case 158:
   if (entry->action != APPRAISE) {
    result = -EINVAL;
    break;
   }

   ima_log_string(ab, "appraise_type", args[0].from);
   if ((strcmp(args[0].from, "imasig")) == 0)
    entry->flags |= IMA_DIGSIG_REQUIRED;
   else if (ima_hook_supports_modsig(entry->func) &&
     strcmp(args[0].from, "imasig|modsig") == 0)
    entry->flags |= IMA_DIGSIG_REQUIRED |
      IMA_MODSIG_ALLOWED;
   else
    result = -EINVAL;
   break;
  case 135:
   entry->flags |= IMA_PERMIT_DIRECTIO;
   break;
  case 136:
   if (entry->action != MEASURE) {
    result = -EINVAL;
    break;
   }
   ima_log_string(ab, "pcr", args[0].from);

   result = kstrtoint(args[0].from, 10, &entry->pcr);
   if (result || INVALID_PCR(entry->pcr))
    result = -EINVAL;
   else
    entry->flags |= IMA_PCR;

   break;
  case 131:
   ima_log_string(ab, "template", args[0].from);
   if (entry->action != MEASURE) {
    result = -EINVAL;
    break;
   }
   template_desc = lookup_template_desc(args[0].from);
   if (!template_desc || entry->template) {
    result = -EINVAL;
    break;
   }






   template_desc_init_fields(template_desc->fmt,
       &(template_desc->fields),
       &(template_desc->num_fields));
   entry->template = template_desc;
   break;
  case 153:
   ima_log_string(ab, "UNKNOWN", p);
   result = -EINVAL;
   break;
  }
 }
 if (!result && (entry->action == UNKNOWN))
  result = -EINVAL;
 else if (entry->action == APPRAISE)
  temp_ima_appraise |= ima_appraise_flag(entry->func);

 if (!result && entry->flags & IMA_MODSIG_ALLOWED) {
  template_desc = entry->template ? entry->template :
        ima_template_desc_current();
  check_template_modsig(template_desc);
 }

 audit_log_format(ab, "res=%d", !result);
 audit_log_end(ab);
 return result;
}

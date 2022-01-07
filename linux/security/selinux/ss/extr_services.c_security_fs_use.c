
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct superblock_security_struct {int behavior; scalar_t__ sid; } ;
struct super_block {TYPE_1__* s_type; struct superblock_security_struct* s_security; } ;
struct sidtab {int dummy; } ;
struct selinux_state {TYPE_4__* ss; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_7__ {int behavior; } ;
struct TYPE_6__ {int name; } ;
struct ocontext {scalar_t__* sid; int * context; TYPE_3__ v; struct ocontext* next; TYPE_2__ u; } ;
struct TYPE_8__ {int policy_rwlock; struct sidtab* sidtab; struct policydb policydb; } ;
struct TYPE_5__ {char* name; } ;


 size_t OCON_FSUSE ;
 int SECCLASS_DIR ;
 int SECURITY_FS_USE_GENFS ;
 int SECURITY_FS_USE_NONE ;
 int __security_genfs_sid (struct selinux_state*,char const*,char*,int ,scalar_t__*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab_context_to_sid (struct sidtab*,int *,scalar_t__*) ;
 scalar_t__ strcmp (char const*,int ) ;

int security_fs_use(struct selinux_state *state, struct super_block *sb)
{
 struct policydb *policydb;
 struct sidtab *sidtab;
 int rc = 0;
 struct ocontext *c;
 struct superblock_security_struct *sbsec = sb->s_security;
 const char *fstype = sb->s_type->name;

 read_lock(&state->ss->policy_rwlock);

 policydb = &state->ss->policydb;
 sidtab = state->ss->sidtab;

 c = policydb->ocontexts[OCON_FSUSE];
 while (c) {
  if (strcmp(fstype, c->u.name) == 0)
   break;
  c = c->next;
 }

 if (c) {
  sbsec->behavior = c->v.behavior;
  if (!c->sid[0]) {
   rc = sidtab_context_to_sid(sidtab, &c->context[0],
         &c->sid[0]);
   if (rc)
    goto out;
  }
  sbsec->sid = c->sid[0];
 } else {
  rc = __security_genfs_sid(state, fstype, "/", SECCLASS_DIR,
       &sbsec->sid);
  if (rc) {
   sbsec->behavior = SECURITY_FS_USE_NONE;
   rc = 0;
  } else {
   sbsec->behavior = SECURITY_FS_USE_GENFS;
  }
 }

out:
 read_unlock(&state->ss->policy_rwlock);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sidtab {int dummy; } ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {struct genfs* genfs; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {scalar_t__ sclass; } ;
struct ocontext {scalar_t__* sid; int * context; TYPE_3__ u; TYPE_2__ v; struct ocontext* next; } ;
struct genfs {struct ocontext* head; int fstype; struct genfs* next; } ;
struct TYPE_4__ {int map; struct sidtab* sidtab; struct policydb policydb; } ;


 int ENOENT ;
 scalar_t__ SECINITSID_UNLABELED ;
 int sidtab_context_to_sid (struct sidtab*,int *,scalar_t__*) ;
 int strcmp (char const*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 scalar_t__ unmap_class (int *,scalar_t__) ;

__attribute__((used)) static inline int __security_genfs_sid(struct selinux_state *state,
           const char *fstype,
           char *path,
           u16 orig_sclass,
           u32 *sid)
{
 struct policydb *policydb = &state->ss->policydb;
 struct sidtab *sidtab = state->ss->sidtab;
 int len;
 u16 sclass;
 struct genfs *genfs;
 struct ocontext *c;
 int rc, cmp = 0;

 while (path[0] == '/' && path[1] == '/')
  path++;

 sclass = unmap_class(&state->ss->map, orig_sclass);
 *sid = SECINITSID_UNLABELED;

 for (genfs = policydb->genfs; genfs; genfs = genfs->next) {
  cmp = strcmp(fstype, genfs->fstype);
  if (cmp <= 0)
   break;
 }

 rc = -ENOENT;
 if (!genfs || cmp)
  goto out;

 for (c = genfs->head; c; c = c->next) {
  len = strlen(c->u.name);
  if ((!c->v.sclass || sclass == c->v.sclass) &&
      (strncmp(c->u.name, path, len) == 0))
   break;
 }

 rc = -ENOENT;
 if (!c)
  goto out;

 if (!c->sid[0]) {
  rc = sidtab_context_to_sid(sidtab, &c->context[0], &c->sid[0]);
  if (rc)
   goto out;
 }

 *sid = c->sid[0];
 rc = 0;
out:
 return rc;
}

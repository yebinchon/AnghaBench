
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aa_profile {int dummy; } ;
struct aa_perms {int audit; int allow; int kill; int quiet; } ;
struct TYPE_3__ {char const* src_name; char const* type; char const* trans; unsigned long flags; void const* data; } ;
struct TYPE_4__ {char const* name; char const* info; int error; TYPE_1__ mnt; } ;


 int AA_AUDIT_DATA ;
 scalar_t__ AUDIT_ALL ;
 int AUDIT_APPARMOR_AUDIT ;
 int AUDIT_APPARMOR_AUTO ;
 int AUDIT_APPARMOR_KILL ;
 scalar_t__ AUDIT_MODE (struct aa_profile*) ;
 scalar_t__ AUDIT_NOQUIET ;
 int DEFINE_AUDIT_DATA (int ,int ,char const*) ;
 int LSM_AUDIT_DATA_NONE ;
 int aa_audit (int,struct aa_profile*,int *,int ) ;
 TYPE_2__* aad (int *) ;
 int audit_cb ;
 scalar_t__ likely (int) ;
 int sa ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int audit_mount(struct aa_profile *profile, const char *op,
         const char *name, const char *src_name,
         const char *type, const char *trans,
         unsigned long flags, const void *data, u32 request,
         struct aa_perms *perms, const char *info, int error)
{
 int audit_type = AUDIT_APPARMOR_AUTO;
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, op);

 if (likely(!error)) {
  u32 mask = perms->audit;

  if (unlikely(AUDIT_MODE(profile) == AUDIT_ALL))
   mask = 0xffff;


  request &= mask;

  if (likely(!request))
   return 0;
  audit_type = AUDIT_APPARMOR_AUDIT;
 } else {

  request = request & ~perms->allow;

  if (request & perms->kill)
   audit_type = AUDIT_APPARMOR_KILL;


  if ((request & perms->quiet) &&
      AUDIT_MODE(profile) != AUDIT_NOQUIET &&
      AUDIT_MODE(profile) != AUDIT_ALL)
   request &= ~perms->quiet;

  if (!request)
   return error;
 }

 aad(&sa)->name = name;
 aad(&sa)->mnt.src_name = src_name;
 aad(&sa)->mnt.type = type;
 aad(&sa)->mnt.trans = trans;
 aad(&sa)->mnt.flags = flags;
 if (data && (perms->audit & AA_AUDIT_DATA))
  aad(&sa)->mnt.data = data;
 aad(&sa)->info = info;
 aad(&sa)->error = error;

 return aa_audit(audit_type, profile, &sa, audit_cb);
}

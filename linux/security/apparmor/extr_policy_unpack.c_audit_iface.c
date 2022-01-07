
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* hname; } ;
struct aa_profile {TYPE_2__ base; } ;
struct aa_ext {scalar_t__ start; scalar_t__ pos; } ;
struct TYPE_4__ {char const* ns; scalar_t__ pos; } ;
struct TYPE_6__ {char const* name; char const* info; int error; TYPE_1__ iface; } ;


 int AUDIT_APPARMOR_STATUS ;
 int DEFINE_AUDIT_DATA (int ,int ,int *) ;
 int LSM_AUDIT_DATA_NONE ;
 int aa_audit (int ,struct aa_profile*,int *,int ) ;
 int aa_current_raw_label () ;
 TYPE_3__* aad (int *) ;
 int audit_cb ;
 struct aa_profile* labels_profile (int ) ;
 int sa ;

__attribute__((used)) static int audit_iface(struct aa_profile *new, const char *ns_name,
         const char *name, const char *info, struct aa_ext *e,
         int error)
{
 struct aa_profile *profile = labels_profile(aa_current_raw_label());
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, ((void*)0));
 if (e)
  aad(&sa)->iface.pos = e->pos - e->start;
 aad(&sa)->iface.ns = ns_name;
 if (new)
  aad(&sa)->name = new->base.hname;
 else
  aad(&sa)->name = name;
 aad(&sa)->info = info;
 aad(&sa)->error = error;

 return aa_audit(AUDIT_APPARMOR_STATUS, profile, &sa, audit_cb);
}

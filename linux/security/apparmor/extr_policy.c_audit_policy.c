
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aa_label {int dummy; } ;
struct TYPE_3__ {char const* ns; } ;
struct TYPE_4__ {char const* name; char const* info; int error; struct aa_label* label; TYPE_1__ iface; } ;


 int AUDIT_APPARMOR_STATUS ;
 int DEFINE_AUDIT_DATA (int ,int ,char const*) ;
 int LSM_AUDIT_DATA_NONE ;
 int aa_audit_msg (int ,int *,int ) ;
 TYPE_2__* aad (int *) ;
 int audit_cb ;
 int sa ;

__attribute__((used)) static int audit_policy(struct aa_label *label, const char *op,
   const char *ns_name, const char *name,
   const char *info, int error)
{
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, op);

 aad(&sa)->iface.ns = ns_name;
 aad(&sa)->name = name;
 aad(&sa)->info = info;
 aad(&sa)->error = error;
 aad(&sa)->label = label;

 aa_audit_msg(AUDIT_APPARMOR_STATUS, &sa, audit_cb);

 return error;
}

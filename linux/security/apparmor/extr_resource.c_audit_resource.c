
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {unsigned int rlim; unsigned long max; } ;
struct TYPE_4__ {char const* info; int error; struct aa_label* peer; TYPE_1__ rlim; } ;


 int AUDIT_APPARMOR_AUTO ;
 int DEFINE_AUDIT_DATA (int ,int ,int ) ;
 int LSM_AUDIT_DATA_NONE ;
 int OP_SETRLIMIT ;
 int aa_audit (int ,struct aa_profile*,int *,int ) ;
 TYPE_2__* aad (int *) ;
 int audit_cb ;
 int sa ;

__attribute__((used)) static int audit_resource(struct aa_profile *profile, unsigned int resource,
     unsigned long value, struct aa_label *peer,
     const char *info, int error)
{
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, OP_SETRLIMIT);

 aad(&sa)->rlim.rlim = resource;
 aad(&sa)->rlim.max = value;
 aad(&sa)->peer = peer;
 aad(&sa)->info = info;
 aad(&sa)->error = error;

 return aa_audit(AUDIT_APPARMOR_AUTO, profile, &sa, audit_cb);
}

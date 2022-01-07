
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int unmappedsig; int signal; } ;


 int DEFINE_AUDIT_DATA (int ,int ,int ) ;
 int LSM_AUDIT_DATA_NONE ;
 int MAY_READ ;
 int MAY_WRITE ;
 int OP_SIGNAL ;
 TYPE_1__* aad (int *) ;
 int map_signal_num (int) ;
 int profile_signal_perm (struct aa_profile*,struct aa_label*,int ,int *) ;
 int sa ;
 int xcheck_labels (struct aa_label*,struct aa_label*,struct aa_profile*,int ,int ) ;

int aa_may_signal(struct aa_label *sender, struct aa_label *target, int sig)
{
 struct aa_profile *profile;
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, OP_SIGNAL);

 aad(&sa)->signal = map_signal_num(sig);
 aad(&sa)->unmappedsig = sig;
 return xcheck_labels(sender, target, profile,
   profile_signal_perm(profile, target, MAY_WRITE, &sa),
   profile_signal_perm(profile, sender, MAY_READ, &sa));
}

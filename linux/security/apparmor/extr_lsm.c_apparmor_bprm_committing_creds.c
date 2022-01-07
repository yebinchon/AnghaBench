
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {int cred; } ;
struct aa_label {scalar_t__ proxy; } ;
struct TYPE_2__ {scalar_t__ pdeath_signal; int files; } ;


 int __aa_transition_rlimits (struct aa_label*,struct aa_label*) ;
 struct aa_label* aa_current_raw_label () ;
 int aa_inherit_files (int ,int ) ;
 struct aa_label* cred_label (int ) ;
 TYPE_1__* current ;
 scalar_t__ unconfined (struct aa_label*) ;

__attribute__((used)) static void apparmor_bprm_committing_creds(struct linux_binprm *bprm)
{
 struct aa_label *label = aa_current_raw_label();
 struct aa_label *new_label = cred_label(bprm->cred);


 if ((new_label->proxy == label->proxy) ||
     (unconfined(new_label)))
  return;

 aa_inherit_files(bprm->cred, current->files);

 current->pdeath_signal = 0;


 __aa_transition_rlimits(label, new_label);
}

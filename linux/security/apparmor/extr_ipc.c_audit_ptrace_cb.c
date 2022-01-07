
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int request; int denied; int peer; int label; } ;


 int AA_PTRACE_PERM_MASK ;
 int FLAGS_NONE ;
 int GFP_ATOMIC ;
 int aa_label_xaudit (struct audit_buffer*,int ,int ,int ,int ) ;
 TYPE_1__* aad (struct common_audit_data*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_ptrace_mask (struct audit_buffer*,int) ;
 int labels_ns (int ) ;

__attribute__((used)) static void audit_ptrace_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 if (aad(sa)->request & AA_PTRACE_PERM_MASK) {
  audit_log_format(ab, " requested_mask=");
  audit_ptrace_mask(ab, aad(sa)->request);

  if (aad(sa)->denied & AA_PTRACE_PERM_MASK) {
   audit_log_format(ab, " denied_mask=");
   audit_ptrace_mask(ab, aad(sa)->denied);
  }
 }
 audit_log_format(ab, " peer=");
 aa_label_xaudit(ab, labels_ns(aad(sa)->label), aad(sa)->peer,
   FLAGS_NONE, GFP_ATOMIC);
}

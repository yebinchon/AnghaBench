
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef int kuid_t ;
struct TYPE_3__ {scalar_t__ target; int ouid; } ;
struct TYPE_4__ {int request; int denied; TYPE_1__ fs; scalar_t__ peer; int label; } ;


 int AA_AUDIT_FILE_MASK ;
 int FLAG_VIEW_SUBNS ;
 int GFP_ATOMIC ;
 int aa_label_xaudit (struct audit_buffer*,int ,scalar_t__,int ,int ) ;
 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_file_mask (struct audit_buffer*,int) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_untrustedstring (struct audit_buffer*,scalar_t__) ;
 int current_fsuid () ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int labels_ns (int ) ;

__attribute__((used)) static void file_audit_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;
 kuid_t fsuid = current_fsuid();

 if (aad(sa)->request & AA_AUDIT_FILE_MASK) {
  audit_log_format(ab, " requested_mask=");
  audit_file_mask(ab, aad(sa)->request);
 }
 if (aad(sa)->denied & AA_AUDIT_FILE_MASK) {
  audit_log_format(ab, " denied_mask=");
  audit_file_mask(ab, aad(sa)->denied);
 }
 if (aad(sa)->request & AA_AUDIT_FILE_MASK) {
  audit_log_format(ab, " fsuid=%d",
     from_kuid(&init_user_ns, fsuid));
  audit_log_format(ab, " ouid=%d",
     from_kuid(&init_user_ns, aad(sa)->fs.ouid));
 }

 if (aad(sa)->peer) {
  audit_log_format(ab, " target=");
  aa_label_xaudit(ab, labels_ns(aad(sa)->label), aad(sa)->peer,
    FLAG_VIEW_SUBNS, GFP_ATOMIC);
 } else if (aad(sa)->fs.target) {
  audit_log_format(ab, " target=");
  audit_log_untrustedstring(ab, aad(sa)->fs.target);
 }
}

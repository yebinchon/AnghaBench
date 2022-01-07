
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int peer; int label; scalar_t__ denied; scalar_t__ request; } ;


 int FLAGS_NONE ;
 int GFP_ATOMIC ;
 int PERMS_CHRS_MASK ;
 int PERMS_NAMES_MASK ;
 int aa_audit_perm_mask (struct audit_buffer*,scalar_t__,int ,int ,int ,int ) ;
 int aa_file_perm_chrs ;
 int aa_file_perm_names ;
 int aa_label_xaudit (struct audit_buffer*,int ,int ,int ,int ) ;
 TYPE_1__* aad (struct common_audit_data*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int labels_ns (int ) ;

__attribute__((used)) static void aa_audit_perms_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 if (aad(sa)->request) {
  audit_log_format(ab, " requested_mask=");
  aa_audit_perm_mask(ab, aad(sa)->request, aa_file_perm_chrs,
       PERMS_CHRS_MASK, aa_file_perm_names,
       PERMS_NAMES_MASK);
 }
 if (aad(sa)->denied) {
  audit_log_format(ab, "denied_mask=");
  aa_audit_perm_mask(ab, aad(sa)->denied, aa_file_perm_chrs,
       PERMS_CHRS_MASK, aa_file_perm_names,
       PERMS_NAMES_MASK);
 }
 audit_log_format(ab, " peer=");
 aa_label_xaudit(ab, labels_ns(aad(sa)->label), aad(sa)->peer,
          FLAGS_NONE, GFP_ATOMIC);
}

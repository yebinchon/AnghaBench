
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; scalar_t__ flags; scalar_t__ trans; scalar_t__ src_name; scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mnt; } ;


 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,scalar_t__) ;
 int audit_mnt_flags (struct audit_buffer*,scalar_t__) ;

__attribute__((used)) static void audit_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 if (aad(sa)->mnt.type) {
  audit_log_format(ab, " fstype=");
  audit_log_untrustedstring(ab, aad(sa)->mnt.type);
 }
 if (aad(sa)->mnt.src_name) {
  audit_log_format(ab, " srcname=");
  audit_log_untrustedstring(ab, aad(sa)->mnt.src_name);
 }
 if (aad(sa)->mnt.trans) {
  audit_log_format(ab, " trans=");
  audit_log_untrustedstring(ab, aad(sa)->mnt.trans);
 }
 if (aad(sa)->mnt.flags) {
  audit_log_format(ab, " flags=\"");
  audit_mnt_flags(ab, aad(sa)->mnt.flags);
  audit_log_format(ab, "\"");
 }
 if (aad(sa)->mnt.data) {
  audit_log_format(ab, " options=");
  audit_log_untrustedstring(ab, aad(sa)->mnt.data);
 }
}

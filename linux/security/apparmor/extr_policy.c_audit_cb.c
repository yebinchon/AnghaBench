
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ ns; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,scalar_t__) ;

__attribute__((used)) static void audit_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 if (aad(sa)->iface.ns) {
  audit_log_format(ab, " ns=");
  audit_log_untrustedstring(ab, aad(sa)->iface.ns);
 }
}

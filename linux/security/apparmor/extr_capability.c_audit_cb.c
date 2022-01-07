
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t cap; } ;
struct common_audit_data {TYPE_1__ u; } ;
struct audit_buffer {int dummy; } ;


 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,int ) ;
 int * capability_names ;

__attribute__((used)) static void audit_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 audit_log_format(ab, " capname=");
 audit_log_untrustedstring(ab, capability_names[sa->u.cap]);
}

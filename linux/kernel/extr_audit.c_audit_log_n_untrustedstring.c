
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int audit_log_n_hex (struct audit_buffer*,char const*,size_t) ;
 int audit_log_n_string (struct audit_buffer*,char const*,size_t) ;
 scalar_t__ audit_string_contains_control (char const*,size_t) ;

void audit_log_n_untrustedstring(struct audit_buffer *ab, const char *string,
     size_t len)
{
 if (audit_string_contains_control(string, len))
  audit_log_n_hex(ab, string, len);
 else
  audit_log_n_string(ab, string, len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int audit_log_n_untrustedstring (struct audit_buffer*,char const*,int ) ;
 int strlen (char const*) ;

void audit_log_untrustedstring(struct audit_buffer *ab, const char *string)
{
 audit_log_n_untrustedstring(ab, string, strlen(string));
}

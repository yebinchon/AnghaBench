
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct audit_buffer {int dummy; } ;


 int audit_log_format (struct audit_buffer*,char const*,char const* const) ;

void aa_audit_perm_names(struct audit_buffer *ab, const char * const *names,
    u32 mask)
{
 const char *fmt = "%s";
 unsigned int i, perm = 1;
 bool prev = 0;

 for (i = 0; i < 32; perm <<= 1, i++) {
  if (mask & perm) {
   audit_log_format(ab, fmt, names[i]);
   if (!prev) {
    prev = 1;
    fmt = " %s";
   }
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;
typedef int str ;


 int aa_audit_perm_names (struct audit_buffer*,char const* const*,int) ;
 int aa_perm_mask_to_str (char*,int,char const*,int) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;

void aa_audit_perm_mask(struct audit_buffer *ab, u32 mask, const char *chrs,
   u32 chrsmask, const char * const *names, u32 namesmask)
{
 char str[33];

 audit_log_format(ab, "\"");
 if ((mask & chrsmask) && chrs) {
  aa_perm_mask_to_str(str, sizeof(str), chrs, mask & chrsmask);
  mask &= ~chrsmask;
  audit_log_format(ab, "%s", str);
  if (mask & namesmask)
   audit_log_format(ab, " ");
 }
 if ((mask & namesmask) && names)
  aa_audit_perm_names(ab, names, mask & namesmask);
 audit_log_format(ab, "\"");
}

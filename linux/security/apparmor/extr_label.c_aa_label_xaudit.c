
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;
struct aa_ns {int dummy; } ;
struct aa_label {scalar_t__ hname; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 int AA_DEBUG (char*) ;
 int aa_label_asxprint (char**,struct aa_ns*,struct aa_label*,int,int ) ;
 int audit_log_n_hex (struct audit_buffer*,char const*,int) ;
 int audit_log_n_string (struct audit_buffer*,char const*,int) ;
 scalar_t__ audit_string_contains_control (char const*,int) ;
 scalar_t__ display_mode (struct aa_ns*,struct aa_label*,int) ;
 int kfree (char*) ;
 int strlen (char const*) ;
 int use_label_hname (struct aa_ns*,struct aa_label*,int) ;

void aa_label_xaudit(struct audit_buffer *ab, struct aa_ns *ns,
       struct aa_label *label, int flags, gfp_t gfp)
{
 const char *str;
 char *name = ((void*)0);
 int len;

 AA_BUG(!ab);
 AA_BUG(!label);

 if (!use_label_hname(ns, label, flags) ||
     display_mode(ns, label, flags)) {
  len = aa_label_asxprint(&name, ns, label, flags, gfp);
  if (len == -1) {
   AA_DEBUG("label print error");
   return;
  }
  str = name;
 } else {
  str = (char *) label->hname;
  len = strlen(str);
 }
 if (audit_string_contains_control(str, len))
  audit_log_n_hex(ab, str, len);
 else
  audit_log_n_string(ab, str, len);

 kfree(name);
}

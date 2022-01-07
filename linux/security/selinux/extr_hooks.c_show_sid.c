
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int kfree (char*) ;
 int security_sid_to_context (int *,int ,char**,int *) ;
 int selinux_state ;
 int seq_escape (struct seq_file*,char*,char*) ;
 int seq_putc (struct seq_file*,char) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static int show_sid(struct seq_file *m, u32 sid)
{
 char *context = ((void*)0);
 u32 len;
 int rc;

 rc = security_sid_to_context(&selinux_state, sid,
          &context, &len);
 if (!rc) {
  bool has_comma = context && strchr(context, ',');

  seq_putc(m, '=');
  if (has_comma)
   seq_putc(m, '\"');
  seq_escape(m, context, "\"\n\\");
  if (has_comma)
   seq_putc(m, '\"');
 }
 kfree(context);
 return rc;
}

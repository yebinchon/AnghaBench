
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct aa_ns {int dummy; } ;
struct aa_label {char* hname; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 int AA_DEBUG (char*) ;
 int aa_label_asxprint (char**,struct aa_ns*,struct aa_label*,int,int ) ;
 scalar_t__ display_mode (struct aa_ns*,struct aa_label*,int) ;
 int kfree (char*) ;
 int label_modename (struct aa_ns*,struct aa_label*,int) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;
 int use_label_hname (struct aa_ns*,struct aa_label*,int) ;

void aa_label_seq_xprint(struct seq_file *f, struct aa_ns *ns,
    struct aa_label *label, int flags, gfp_t gfp)
{
 AA_BUG(!f);
 AA_BUG(!label);

 if (!use_label_hname(ns, label, flags)) {
  char *str;
  int len;

  len = aa_label_asxprint(&str, ns, label, flags, gfp);
  if (len == -1) {
   AA_DEBUG("label print error");
   return;
  }
  seq_printf(f, "%s", str);
  kfree(str);
 } else if (display_mode(ns, label, flags))
  seq_printf(f, "%s (%s)", label->hname,
      label_modename(ns, label, flags));
 else
  seq_printf(f, "%s", label->hname);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;
struct aa_label {char* hname; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 int AA_DEBUG (char*) ;
 int aa_label_asxprint (char**,struct aa_ns*,struct aa_label*,int,int ) ;
 scalar_t__ display_mode (struct aa_ns*,struct aa_label*,int) ;
 int kfree (char*) ;
 int label_modename (struct aa_ns*,struct aa_label*,int) ;
 int pr_info (char*,char*,...) ;
 int use_label_hname (struct aa_ns*,struct aa_label*,int) ;

void aa_label_xprintk(struct aa_ns *ns, struct aa_label *label, int flags,
        gfp_t gfp)
{
 AA_BUG(!label);

 if (!use_label_hname(ns, label, flags)) {
  char *str;
  int len;

  len = aa_label_asxprint(&str, ns, label, flags, gfp);
  if (len == -1) {
   AA_DEBUG("label print error");
   return;
  }
  pr_info("%s", str);
  kfree(str);
 } else if (display_mode(ns, label, flags))
  pr_info("%s (%s)", label->hname,
         label_modename(ns, label, flags));
 else
  pr_info("%s", label->hname);
}

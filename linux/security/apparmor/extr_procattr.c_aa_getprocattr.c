
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int EACCES ;
 int ENOMEM ;
 int FLAG_HIDDEN_UNCONFINED ;
 int FLAG_SHOW_MODE ;
 int FLAG_VIEW_SUBNS ;
 int GFP_KERNEL ;
 struct aa_ns* aa_get_current_ns () ;
 int aa_label_snxprint (char*,int,struct aa_ns*,struct aa_label*,int) ;
 int aa_ns_visible (struct aa_ns*,struct aa_ns*,int) ;
 int aa_put_ns (struct aa_ns*) ;
 char* kmalloc (int,int ) ;
 struct aa_ns* labels_ns (struct aa_label*) ;

int aa_getprocattr(struct aa_label *label, char **string)
{
 struct aa_ns *ns = labels_ns(label);
 struct aa_ns *current_ns = aa_get_current_ns();
 int len;

 if (!aa_ns_visible(current_ns, ns, 1)) {
  aa_put_ns(current_ns);
  return -EACCES;
 }

 len = aa_label_snxprint(((void*)0), 0, current_ns, label,
    FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
    FLAG_HIDDEN_UNCONFINED);
 AA_BUG(len < 0);

 *string = kmalloc(len + 2, GFP_KERNEL);
 if (!*string) {
  aa_put_ns(current_ns);
  return -ENOMEM;
 }

 len = aa_label_snxprint(*string, len + 2, current_ns, label,
    FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
    FLAG_HIDDEN_UNCONFINED);
 if (len < 0) {
  aa_put_ns(current_ns);
  return len;
 }

 (*string)[len] = '\n';
 (*string)[len + 1] = 0;

 aa_put_ns(current_ns);
 return len + 1;
}

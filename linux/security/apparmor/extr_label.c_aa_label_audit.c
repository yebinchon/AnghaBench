
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;
struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;
typedef int gfp_t ;


 int FLAG_VIEW_SUBNS ;
 struct aa_ns* aa_get_current_ns () ;
 int aa_label_xaudit (struct audit_buffer*,struct aa_ns*,struct aa_label*,int ,int ) ;
 int aa_put_ns (struct aa_ns*) ;

void aa_label_audit(struct audit_buffer *ab, struct aa_label *label, gfp_t gfp)
{
 struct aa_ns *ns = aa_get_current_ns();

 aa_label_xaudit(ab, ns, label, FLAG_VIEW_SUBNS, gfp);
 aa_put_ns(ns);
}

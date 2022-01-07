
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {int tcfd_defdata; } ;
struct tc_action {int dummy; } ;


 int kfree (int ) ;
 struct tcf_defact* to_defact (struct tc_action*) ;

__attribute__((used)) static void tcf_simp_release(struct tc_action *a)
{
 struct tcf_defact *d = to_defact(a);
 kfree(d->tcfd_defdata);
}

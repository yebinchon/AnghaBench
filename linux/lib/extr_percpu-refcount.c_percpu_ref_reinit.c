
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_ref {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int percpu_ref_is_zero (struct percpu_ref*) ;
 int percpu_ref_resurrect (struct percpu_ref*) ;

void percpu_ref_reinit(struct percpu_ref *ref)
{
 WARN_ON_ONCE(!percpu_ref_is_zero(ref));

 percpu_ref_resurrect(ref);
}

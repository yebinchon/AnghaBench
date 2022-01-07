
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch {int dummy; } ;
struct canid_match {int dummy; } ;


 struct canid_match* em_canid_priv (struct tcf_ematch*) ;
 int kfree (struct canid_match*) ;

__attribute__((used)) static void em_canid_destroy(struct tcf_ematch *m)
{
 struct canid_match *cm = em_canid_priv(m);

 kfree(cm);
}

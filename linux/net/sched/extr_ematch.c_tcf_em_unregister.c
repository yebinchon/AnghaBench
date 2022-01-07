
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch_ops {int link; } ;


 int ematch_mod_lock ;
 int list_del (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void tcf_em_unregister(struct tcf_ematch_ops *ops)
{
 write_lock(&ematch_mod_lock);
 list_del(&ops->link);
 write_unlock(&ematch_mod_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_policy {int hname; int list; int profiles; } ;


 int AA_BUG (int ) ;
 int aa_put_str (int ) ;
 int on_list_rcu (int *) ;

void aa_policy_destroy(struct aa_policy *policy)
{
 AA_BUG(on_list_rcu(&policy->profiles));
 AA_BUG(on_list_rcu(&policy->list));


 aa_put_str(policy->hname);
}

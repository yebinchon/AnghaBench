
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_domain {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int svcauth_unix_domain_release_rcu ;

__attribute__((used)) static void svcauth_unix_domain_release(struct auth_domain *dom)
{
 call_rcu(&dom->rcu_head, svcauth_unix_domain_release_rcu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct aa_ns {int dummy; } ;


 int AA_DEBUG (char*,int) ;
 int CAP_MAC_ADMIN ;
 int aa_g_lock_policy ;
 struct user_namespace* current_user_ns () ;
 int ns_capable (struct user_namespace*,int ) ;
 scalar_t__ policy_view_capable (struct aa_ns*) ;

bool policy_admin_capable(struct aa_ns *ns)
{
 struct user_namespace *user_ns = current_user_ns();
 bool capable = ns_capable(user_ns, CAP_MAC_ADMIN);

 AA_DEBUG("cap_mac_admin? %d\n", capable);
 AA_DEBUG("policy locked? %d\n", aa_g_lock_policy);

 return policy_view_capable(ns) && capable && !aa_g_lock_policy;
}

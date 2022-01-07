
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {scalar_t__ level; } ;
struct aa_ns {scalar_t__ level; } ;


 struct aa_ns* aa_get_current_ns () ;
 scalar_t__ aa_ns_visible (struct aa_ns*,struct aa_ns*,int) ;
 int aa_put_ns (struct aa_ns*) ;
 int current_euid () ;
 struct user_namespace* current_user_ns () ;
 scalar_t__ in_egroup_p (int ) ;
 struct user_namespace init_user_ns ;
 int make_kgid (struct user_namespace*,int ) ;
 int make_kuid (struct user_namespace*,int ) ;
 scalar_t__ uid_eq (int ,int ) ;
 scalar_t__ unprivileged_userns_apparmor_policy ;

bool policy_view_capable(struct aa_ns *ns)
{
 struct user_namespace *user_ns = current_user_ns();
 struct aa_ns *view_ns = aa_get_current_ns();
 bool root_in_user_ns = uid_eq(current_euid(), make_kuid(user_ns, 0)) ||
          in_egroup_p(make_kgid(user_ns, 0));
 bool response = 0;
 if (!ns)
  ns = view_ns;

 if (root_in_user_ns && aa_ns_visible(view_ns, ns, 1) &&
     (user_ns == &init_user_ns ||
      (unprivileged_userns_apparmor_policy != 0 &&
       user_ns->level == view_ns->level)))
  response = 1;
 aa_put_ns(view_ns);

 return response;
}

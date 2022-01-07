
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_namespace {struct user_namespace* parent; } ;
struct ns_common {TYPE_1__* ops; } ;
struct TYPE_4__ {struct ns_common ns; } ;
struct TYPE_3__ {struct user_namespace* (* owner ) (struct ns_common*) ;} ;


 int EPERM ;
 struct ns_common* ERR_PTR (int ) ;
 struct user_namespace* current_user_ns () ;
 TYPE_2__* get_user_ns (struct user_namespace*) ;
 struct user_namespace* stub1 (struct ns_common*) ;

struct ns_common *ns_get_owner(struct ns_common *ns)
{
 struct user_namespace *my_user_ns = current_user_ns();
 struct user_namespace *owner, *p;


 owner = p = ns->ops->owner(ns);
 for (;;) {
  if (!p)
   return ERR_PTR(-EPERM);
  if (p == my_user_ns)
   break;
  p = p->parent;
 }

 return &get_user_ns(owner)->ns;
}

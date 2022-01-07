
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct ns_common {int dummy; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;


 TYPE_1__* to_uts_ns (struct ns_common*) ;

__attribute__((used)) static struct user_namespace *utsns_owner(struct ns_common *ns)
{
 return to_uts_ns(ns)->user_ns;
}

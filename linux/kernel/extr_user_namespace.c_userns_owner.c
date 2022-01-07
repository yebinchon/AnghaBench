
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct ns_common {int dummy; } ;
struct TYPE_2__ {struct user_namespace* parent; } ;


 TYPE_1__* to_user_ns (struct ns_common*) ;

__attribute__((used)) static struct user_namespace *userns_owner(struct ns_common *ns)
{
 return to_user_ns(ns)->parent;
}

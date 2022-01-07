
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
typedef int kuid_t ;


 int UCOUNT_USER_NAMESPACES ;
 struct ucounts* inc_ucount (struct user_namespace*,int ,int ) ;

__attribute__((used)) static struct ucounts *inc_user_namespaces(struct user_namespace *ns, kuid_t uid)
{
 return inc_ucount(ns, uid, UCOUNT_USER_NAMESPACES);
}

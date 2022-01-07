
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;


 int UCOUNT_MNT_NAMESPACES ;
 int current_euid () ;
 struct ucounts* inc_ucount (struct user_namespace*,int ,int ) ;

__attribute__((used)) static struct ucounts *inc_mnt_namespaces(struct user_namespace *ns)
{
 return inc_ucount(ns, current_euid(), UCOUNT_MNT_NAMESPACES);
}

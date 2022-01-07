
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {int user_ns; int ucounts; int ns; } ;


 int dec_mnt_namespaces (int ) ;
 int is_anon_ns (struct mnt_namespace*) ;
 int kfree (struct mnt_namespace*) ;
 int ns_free_inum (int *) ;
 int put_user_ns (int ) ;

__attribute__((used)) static void free_mnt_ns(struct mnt_namespace *ns)
{
 if (!is_anon_ns(ns))
  ns_free_inum(&ns->ns);
 dec_mnt_namespaces(ns->ucounts);
 put_user_ns(ns->user_ns);
 kfree(ns);
}

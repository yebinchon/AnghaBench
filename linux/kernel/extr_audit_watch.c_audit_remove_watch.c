
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int * parent; int wlist; } ;


 int audit_put_parent (int *) ;
 int audit_put_watch (struct audit_watch*) ;
 int list_del (int *) ;

__attribute__((used)) static void audit_remove_watch(struct audit_watch *watch)
{
 list_del(&watch->wlist);
 audit_put_parent(watch->parent);
 watch->parent = ((void*)0);
 audit_put_watch(watch);
}

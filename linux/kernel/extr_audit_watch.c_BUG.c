
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int rules; struct audit_parent* parent; } ;
struct audit_parent {int mark; int watches; } ;
struct audit_krule {int rlist; struct audit_watch* watch; } ;


 int audit_get_parent (struct audit_parent*) ;
 int audit_put_parent (struct audit_parent*) ;
 int audit_remove_watch (struct audit_watch*) ;
 int audit_watch_group ;
 int fsnotify_destroy_mark (int *,int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;

void audit_remove_watch_rule(struct audit_krule *krule)
{
 struct audit_watch *watch = krule->watch;
 struct audit_parent *parent = watch->parent;

 list_del(&krule->rlist);

 if (list_empty(&watch->rules)) {




  audit_get_parent(parent);
  audit_remove_watch(watch);
  if (list_empty(&parent->watches))
   fsnotify_destroy_mark(&parent->mark, audit_watch_group);
  audit_put_parent(parent);
 }
}

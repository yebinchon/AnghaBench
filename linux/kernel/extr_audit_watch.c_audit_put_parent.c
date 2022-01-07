
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_parent {int mark; } ;


 int fsnotify_put_mark (int *) ;
 scalar_t__ likely (struct audit_parent*) ;

__attribute__((used)) static void audit_put_parent(struct audit_parent *parent)
{
 if (likely(parent))
  fsnotify_put_mark(&parent->mark);
}

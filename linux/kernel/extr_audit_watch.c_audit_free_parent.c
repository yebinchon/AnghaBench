
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_parent {int watches; } ;


 int WARN_ON (int) ;
 int kfree (struct audit_parent*) ;
 int list_empty (int *) ;

__attribute__((used)) static void audit_free_parent(struct audit_parent *parent)
{
 WARN_ON(!list_empty(&parent->watches));
 kfree(parent);
}

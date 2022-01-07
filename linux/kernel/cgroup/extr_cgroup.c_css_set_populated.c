
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_set {int mg_tasks; int tasks; } ;


 int css_set_lock ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool css_set_populated(struct css_set *cset)
{
 lockdep_assert_held(&css_set_lock);

 return !list_empty(&cset->tasks) || !list_empty(&cset->mg_tasks);
}

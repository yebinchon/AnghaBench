
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int rcu; } ;


 int call_rcu (int *,int ) ;
 int page_rcu_free ;

__attribute__((used)) static void page_free(struct page *p)
{
 call_rcu(&p->rcu, page_rcu_free);
}

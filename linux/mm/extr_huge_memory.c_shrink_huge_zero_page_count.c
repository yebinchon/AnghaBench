
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 unsigned long HPAGE_PMD_NR ;
 int atomic_read (int *) ;
 int huge_zero_refcount ;

__attribute__((used)) static unsigned long shrink_huge_zero_page_count(struct shrinker *shrink,
     struct shrink_control *sc)
{

 return atomic_read(&huge_zero_refcount) == 1 ? HPAGE_PMD_NR : 0;
}

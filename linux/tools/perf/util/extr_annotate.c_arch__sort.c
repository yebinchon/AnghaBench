
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int arch__cmp ;
 int architectures ;
 int qsort (int ,int const,int,int ) ;

__attribute__((used)) static void arch__sort(void)
{
 const int nmemb = ARRAY_SIZE(architectures);

 qsort(architectures, nmemb, sizeof(struct arch), arch__cmp);
}

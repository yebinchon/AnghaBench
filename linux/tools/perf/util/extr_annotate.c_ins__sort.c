
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins {int dummy; } ;
struct arch {int nr_instructions; int instructions; } ;


 int ins__cmp ;
 int qsort (int ,int const,int,int ) ;

__attribute__((used)) static void ins__sort(struct arch *arch)
{
 const int nmemb = arch->nr_instructions;

 qsort(arch->instructions, nmemb, sizeof(struct ins), ins__cmp);
}

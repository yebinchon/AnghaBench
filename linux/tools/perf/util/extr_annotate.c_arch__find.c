
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int arch__key_cmp ;
 int arch__sort () ;
 int architectures ;
 struct arch* bsearch (char const*,int ,int const,int,int ) ;

__attribute__((used)) static struct arch *arch__find(const char *name)
{
 const int nmemb = ARRAY_SIZE(architectures);
 static bool sorted;

 if (!sorted) {
  arch__sort();
  sorted = 1;
 }

 return bsearch(name, architectures, nmemb, sizeof(struct arch), arch__key_cmp);
}

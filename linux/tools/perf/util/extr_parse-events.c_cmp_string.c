
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int cmp_string(const void *a, const void *b)
{
 const char * const *as = a;
 const char * const *bs = b;

 return strcmp(*as, *bs);
}

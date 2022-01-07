
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sevent {scalar_t__ name; scalar_t__ topic; int desc; } ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int cmp_sevent(const void *a, const void *b)
{
 const struct sevent *as = a;
 const struct sevent *bs = b;


 if (!!as->desc != !!bs->desc)
  return !!as->desc - !!bs->desc;
 if (as->topic && bs->topic) {
  int n = strcmp(as->topic, bs->topic);

  if (n)
   return n;
 }
 return strcmp(as->name, bs->name);
}

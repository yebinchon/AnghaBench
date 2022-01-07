
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int nr_autogrow; } ;


 struct fdarray* calloc (int,int) ;
 scalar_t__ fdarray__grow (struct fdarray*,int) ;
 int free (struct fdarray*) ;

struct fdarray *fdarray__new(int nr_alloc, int nr_autogrow)
{
 struct fdarray *fda = calloc(1, sizeof(*fda));

 if (fda != ((void*)0)) {
  if (fdarray__grow(fda, nr_alloc)) {
   free(fda);
   fda = ((void*)0);
  } else {
   fda->nr_autogrow = nr_autogrow;
  }
 }

 return fda;
}

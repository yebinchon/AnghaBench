
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int dummy; } ;


 int free (struct rblist*) ;
 int rblist__exit (struct rblist*) ;

void rblist__delete(struct rblist *rblist)
{
 if (rblist != ((void*)0)) {
  rblist__exit(rblist);
  free(rblist);
 }
}

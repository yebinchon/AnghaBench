
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int dummy; } ;


 int fdarray__exit (struct fdarray*) ;
 int free (struct fdarray*) ;

void fdarray__delete(struct fdarray *fda)
{
 fdarray__exit(fda);
 free(fda);
}

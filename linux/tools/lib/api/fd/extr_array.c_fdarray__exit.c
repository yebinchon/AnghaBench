
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int priv; int entries; } ;


 int fdarray__init (struct fdarray*,int ) ;
 int free (int ) ;

void fdarray__exit(struct fdarray *fda)
{
 free(fda->entries);
 free(fda->priv);
 fdarray__init(fda, 0);
}

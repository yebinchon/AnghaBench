
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalltbl {int dummy; } ;


 int free (struct syscalltbl*) ;

void syscalltbl__delete(struct syscalltbl *tbl)
{
 free(tbl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;


 int free (struct sparsebit*) ;
 int sparsebit_clear_all (struct sparsebit*) ;

void sparsebit_free(struct sparsebit **sbitp)
{
 struct sparsebit *s = *sbitp;

 if (!s)
  return;

 sparsebit_clear_all(s);
 free(s);
 *sbitp = ((void*)0);
}

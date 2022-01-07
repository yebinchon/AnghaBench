
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;


 int sparsebit_all_set (struct sparsebit*) ;

bool sparsebit_any_clear(struct sparsebit *s)
{
 return !sparsebit_all_set(s);
}

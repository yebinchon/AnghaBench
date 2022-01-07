
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;


 int sparsebit_any_set (struct sparsebit*) ;

bool sparsebit_all_clear(struct sparsebit *s)
{
 return !sparsebit_any_set(s);
}

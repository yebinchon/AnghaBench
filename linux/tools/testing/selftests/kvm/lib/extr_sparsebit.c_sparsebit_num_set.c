
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int num_set; } ;
typedef int sparsebit_num_t ;



sparsebit_num_t sparsebit_num_set(struct sparsebit *s)
{
 return s->num_set;
}

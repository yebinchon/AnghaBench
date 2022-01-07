
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {scalar_t__ num_set; scalar_t__ root; } ;



bool sparsebit_all_set(struct sparsebit *s)
{





 return s->root && s->num_set == 0;
}

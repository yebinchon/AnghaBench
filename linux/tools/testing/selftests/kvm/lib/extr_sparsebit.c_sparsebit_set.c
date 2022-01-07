
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef int sparsebit_idx_t ;


 int sparsebit_set_num (struct sparsebit*,int ,int) ;

void sparsebit_set(struct sparsebit *s, sparsebit_idx_t idx)
{
 sparsebit_set_num(s, idx, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef int sparsebit_idx_t ;


 int sparsebit_is_set (struct sparsebit*,int ) ;

bool sparsebit_is_clear(struct sparsebit *s,
 sparsebit_idx_t idx)
{
 return !sparsebit_is_set(s, idx);
}

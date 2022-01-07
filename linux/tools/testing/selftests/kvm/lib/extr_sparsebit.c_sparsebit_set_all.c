
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef int sparsebit_idx_t ;


 int assert (int ) ;
 int sparsebit_all_set (struct sparsebit*) ;
 int sparsebit_set (struct sparsebit*,int ) ;
 int sparsebit_set_num (struct sparsebit*,int,int ) ;

void sparsebit_set_all(struct sparsebit *s)
{
 sparsebit_set(s, 0);
 sparsebit_set_num(s, 1, ~(sparsebit_idx_t) 0);
 assert(sparsebit_all_set(s));
}

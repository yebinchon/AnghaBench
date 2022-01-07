
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
typedef int sparsebit_idx_t ;


 int assert (int) ;
 int sparsebit_any_set (struct sparsebit*) ;
 int sparsebit_clear (struct sparsebit*,int ) ;
 int sparsebit_clear_num (struct sparsebit*,int,int ) ;

void sparsebit_clear_all(struct sparsebit *s)
{
 sparsebit_clear(s, 0);
 sparsebit_clear_num(s, 1, ~(sparsebit_idx_t) 0);
 assert(!sparsebit_any_set(s));
}

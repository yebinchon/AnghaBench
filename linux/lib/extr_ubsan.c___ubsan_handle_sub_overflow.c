
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overflow_data {int dummy; } ;


 int handle_overflow (struct overflow_data*,void*,void*,char) ;

void __ubsan_handle_sub_overflow(struct overflow_data *data,
    void *lhs, void *rhs)
{
 handle_overflow(data, lhs, rhs, '-');
}

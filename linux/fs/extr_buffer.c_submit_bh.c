
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int submit_bh_wbc (int,int,struct buffer_head*,int ,int *) ;

int submit_bh(int op, int op_flags, struct buffer_head *bh)
{
 return submit_bh_wbc(op, op_flags, bh, 0, ((void*)0));
}

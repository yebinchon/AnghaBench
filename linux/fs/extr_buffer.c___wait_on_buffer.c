
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; } ;


 int BH_Lock ;
 int TASK_UNINTERRUPTIBLE ;
 int wait_on_bit_io (int *,int ,int ) ;

void __wait_on_buffer(struct buffer_head * bh)
{
 wait_on_bit_io(&bh->b_state, BH_Lock, TASK_UNINTERRUPTIBLE);
}

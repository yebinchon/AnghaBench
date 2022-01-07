
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct lx6464es {int dummy; } ;


 int ETIMEDOUT ;
 int lx_pipe_state (struct lx6464es*,int ,int,scalar_t__*) ;
 int mdelay (int) ;

__attribute__((used)) static int lx_pipe_wait_for_state(struct lx6464es *chip, u32 pipe,
      int is_capture, u16 state)
{
 int i;



 for (i = 0; i != 50; ++i) {
  u16 current_state;
  int err = lx_pipe_state(chip, pipe, is_capture, &current_state);

  if (err < 0)
   return err;

  if (!err && current_state == state)
   return 0;

  mdelay(1);
 }

 return -ETIMEDOUT;
}

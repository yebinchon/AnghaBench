
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int lx_pipe_toggle_state (struct lx6464es*,int ,int) ;
 int lx_pipe_wait_for_idle (struct lx6464es*,int ,int) ;

int lx_pipe_start(struct lx6464es *chip, u32 pipe, int is_capture)
{
 int err;

 err = lx_pipe_wait_for_idle(chip, pipe, is_capture);
 if (err < 0)
  return err;

 err = lx_pipe_toggle_state(chip, pipe, is_capture);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int PSTATE_IDLE ;
 int lx_pipe_wait_for_state (struct lx6464es*,int ,int,int ) ;

int lx_pipe_wait_for_idle(struct lx6464es *chip, u32 pipe, int is_capture)
{
 return lx_pipe_wait_for_state(chip, pipe, is_capture, PSTATE_IDLE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsa_port {int dummy; } ;


 int dsa_port_set_state (struct dsa_port*,int ,int *) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static void dsa_port_set_state_now(struct dsa_port *dp, u8 state)
{
 int err;

 err = dsa_port_set_state(dp, state, ((void*)0));
 if (err)
  pr_err("DSA: failed to set STP state %u (%d)\n", state, err);
}

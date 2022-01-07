
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpoa_client {int mps_ctrl_addr; } ;
struct k_message {int MPS_ctrl; int type; } ;


 int ATM_ESA_LEN ;
 int SET_MPS_CTRL_ADDR ;
 int memcpy (int ,char const*,int ) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;

__attribute__((used)) static void send_set_mps_ctrl_addr(const char *addr, struct mpoa_client *mpc)
{
 struct k_message mesg;

 memcpy(mpc->mps_ctrl_addr, addr, ATM_ESA_LEN);

 mesg.type = SET_MPS_CTRL_ADDR;
 memcpy(mesg.MPS_ctrl, addr, ATM_ESA_LEN);
 msg_to_mpoad(&mesg, mpc);
}

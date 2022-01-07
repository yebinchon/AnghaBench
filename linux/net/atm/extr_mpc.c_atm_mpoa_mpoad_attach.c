
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpoa_client {int dev_num; int mps_ctrl_addr; int * dev; struct atm_vcc* mpoad_vcc; } ;
struct lec_priv {int lane_version; TYPE_1__* lane2_ops; } ;
struct atm_vcc {int flags; int * dev; } ;
struct TYPE_2__ {int associate_indicator; } ;


 int ATM_ESA_LEN ;
 int ATM_VF_META ;
 int ATM_VF_READY ;
 int EADDRINUSE ;
 int ENOMEM ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct mpoa_client* alloc_mpc () ;
 int del_timer (int *) ;
 int dev_put (int *) ;
 int dprintk (char*,int) ;
 int * find_lec_by_itfnum (int) ;
 struct mpoa_client* find_mpc_by_itfnum (int) ;
 int lane2_assoc_ind ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int mpc_dev ;
 int mpc_timer ;
 int mpc_timer_refresh () ;
 int * mpcs ;
 int mpoa_notifier ;
 struct lec_priv* netdev_priv (int *) ;
 int pr_info (char*,int) ;
 int register_netdevice_notifier (int *) ;
 int send_set_mps_ctrl_addr (int ,struct mpoa_client*) ;
 int set_bit (int ,int *) ;
 int sk_atm (struct atm_vcc*) ;
 int start_mpc (struct mpoa_client*,int *) ;
 int vcc_insert_socket (int ) ;

__attribute__((used)) static int atm_mpoa_mpoad_attach(struct atm_vcc *vcc, int arg)
{
 struct mpoa_client *mpc;
 struct lec_priv *priv;
 int err;

 if (mpcs == ((void*)0)) {
  mpc_timer_refresh();


  err = register_netdevice_notifier(&mpoa_notifier);
  if (err < 0) {
   del_timer(&mpc_timer);
   return err;
  }
 }

 mpc = find_mpc_by_itfnum(arg);
 if (mpc == ((void*)0)) {
  dprintk("allocating new mpc for itf %d\n", arg);
  mpc = alloc_mpc();
  if (mpc == ((void*)0))
   return -ENOMEM;
  mpc->dev_num = arg;
  mpc->dev = find_lec_by_itfnum(arg);

 }
 if (mpc->mpoad_vcc) {
  pr_info("mpoad is already present for itf %d\n", arg);
  return -EADDRINUSE;
 }

 if (mpc->dev) {
  priv = netdev_priv(mpc->dev);
  if (priv->lane_version < 2) {
   dev_put(mpc->dev);
   mpc->dev = ((void*)0);
  } else
   priv->lane2_ops->associate_indicator = lane2_assoc_ind;
 }

 mpc->mpoad_vcc = vcc;
 vcc->dev = &mpc_dev;
 vcc_insert_socket(sk_atm(vcc));
 set_bit(ATM_VF_META, &vcc->flags);
 set_bit(ATM_VF_READY, &vcc->flags);

 if (mpc->dev) {
  char empty[ATM_ESA_LEN];
  memset(empty, 0, ATM_ESA_LEN);

  start_mpc(mpc, mpc->dev);



  if (memcmp(mpc->mps_ctrl_addr, empty, ATM_ESA_LEN) != 0)
   send_set_mps_ctrl_addr(mpc->mps_ctrl_addr, mpc);
 }

 __module_get(THIS_MODULE);
 return arg;
}

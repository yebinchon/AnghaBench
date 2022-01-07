
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct bcm_sock {TYPE_1__ notifier; int rx_ops; int tx_ops; int * bcm_proc_read; scalar_t__ dropped_usr_msgs; scalar_t__ ifindex; scalar_t__ bound; } ;


 int INIT_LIST_HEAD (int *) ;
 int bcm_notifier ;
 struct bcm_sock* bcm_sk (struct sock*) ;
 int register_netdevice_notifier (TYPE_1__*) ;

__attribute__((used)) static int bcm_init(struct sock *sk)
{
 struct bcm_sock *bo = bcm_sk(sk);

 bo->bound = 0;
 bo->ifindex = 0;
 bo->dropped_usr_msgs = 0;
 bo->bcm_proc_read = ((void*)0);

 INIT_LIST_HEAD(&bo->tx_ops);
 INIT_LIST_HEAD(&bo->rx_ops);


 bo->notifier.notifier_call = bcm_notifier;

 register_netdevice_notifier(&bo->notifier);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_num; int nd_ipv4_port; int nd_ipv4_address; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int ML_ERROR ;
 int ML_KTHREAD ;
 int WQ_MEM_RECLAIM ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int mlog (int ,char*) ;
 int * o2net_listen_sock ;
 int o2net_open_listening_sock (int ,int ) ;
 int * o2net_wq ;
 int o2quo_conn_up (int ) ;

int o2net_start_listening(struct o2nm_node *node)
{
 int ret = 0;

 BUG_ON(o2net_wq != ((void*)0));
 BUG_ON(o2net_listen_sock != ((void*)0));

 mlog(ML_KTHREAD, "starting o2net thread...\n");
 o2net_wq = alloc_ordered_workqueue("o2net", WQ_MEM_RECLAIM);
 if (o2net_wq == ((void*)0)) {
  mlog(ML_ERROR, "unable to launch o2net thread\n");
  return -ENOMEM;
 }

 ret = o2net_open_listening_sock(node->nd_ipv4_address,
     node->nd_ipv4_port);
 if (ret) {
  destroy_workqueue(o2net_wq);
  o2net_wq = ((void*)0);
 } else
  o2quo_conn_up(node->nd_num);

 return ret;
}

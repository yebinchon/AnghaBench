
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nci_dev {int cmd_work; int cmd_wq; int cmd_cnt; } ;


 int atomic_set (int *,int) ;
 int cmd_timer ;
 struct nci_dev* from_timer (int ,struct timer_list*,int ) ;
 struct nci_dev* ndev ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nci_cmd_timer(struct timer_list *t)
{
 struct nci_dev *ndev = from_timer(ndev, t, cmd_timer);

 atomic_set(&ndev->cmd_cnt, 1);
 queue_work(ndev->cmd_wq, &ndev->cmd_work);
}

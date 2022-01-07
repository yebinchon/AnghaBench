
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nci_dev {int rx_work; int rx_wq; int flags; } ;


 int NCI_DATA_EXCHANGE_TO ;
 int data_timer ;
 struct nci_dev* from_timer (int ,struct timer_list*,int ) ;
 struct nci_dev* ndev ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nci_data_timer(struct timer_list *t)
{
 struct nci_dev *ndev = from_timer(ndev, t, data_timer);

 set_bit(NCI_DATA_EXCHANGE_TO, &ndev->flags);
 queue_work(ndev->rx_wq, &ndev->rx_work);
}

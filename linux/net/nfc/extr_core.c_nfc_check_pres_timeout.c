
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfc_dev {int check_pres_work; } ;


 int check_pres_timer ;
 struct nfc_dev* dev ;
 struct nfc_dev* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void nfc_check_pres_timeout(struct timer_list *t)
{
 struct nfc_dev *dev = from_timer(dev, t, check_pres_timer);

 schedule_work(&dev->check_pres_work);
}

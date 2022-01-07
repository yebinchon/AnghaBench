
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_ib_device {int event_handler; int list; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 struct smc_ib_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_set_client_data (struct ib_device*,int *,int *) ;
 int ib_unregister_event_handler (int *) ;
 int kfree (struct smc_ib_device*) ;
 int list_del_init (int *) ;
 int smc_ib_cleanup_per_ibdev (struct smc_ib_device*) ;
 int smc_ib_client ;
 TYPE_1__ smc_ib_devices ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void smc_ib_remove_dev(struct ib_device *ibdev, void *client_data)
{
 struct smc_ib_device *smcibdev;

 smcibdev = ib_get_client_data(ibdev, &smc_ib_client);
 ib_set_client_data(ibdev, &smc_ib_client, ((void*)0));
 spin_lock(&smc_ib_devices.lock);
 list_del_init(&smcibdev->list);
 spin_unlock(&smc_ib_devices.lock);
 smc_ib_cleanup_per_ibdev(smcibdev);
 ib_unregister_event_handler(&smcibdev->event_handler);
 kfree(smcibdev);
}

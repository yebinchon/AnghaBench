
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offload_dev {int netdevs; } ;


 int WARN_ON (int) ;
 int kfree (struct bpf_offload_dev*) ;
 int list_empty (int *) ;

void bpf_offload_dev_destroy(struct bpf_offload_dev *offdev)
{
 WARN_ON(!list_empty(&offdev->netdevs));
 kfree(offdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offload_dev {void* priv; } ;



void *bpf_offload_dev_priv(struct bpf_offload_dev *offdev)
{
 return offdev->priv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_offload_ops {int dummy; } ;
struct bpf_offload_dev {int netdevs; void* priv; struct bpf_prog_offload_ops const* ops; } ;


 int ENOMEM ;
 struct bpf_offload_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bpf_devs_lock ;
 int down_write (int *) ;
 struct bpf_offload_dev* kzalloc (int,int ) ;
 int offdevs ;
 int offdevs_inited ;
 int offdevs_params ;
 int rhashtable_init (int *,int *) ;
 int up_write (int *) ;

struct bpf_offload_dev *
bpf_offload_dev_create(const struct bpf_prog_offload_ops *ops, void *priv)
{
 struct bpf_offload_dev *offdev;
 int err;

 down_write(&bpf_devs_lock);
 if (!offdevs_inited) {
  err = rhashtable_init(&offdevs, &offdevs_params);
  if (err)
   return ERR_PTR(err);
  offdevs_inited = 1;
 }
 up_write(&bpf_devs_lock);

 offdev = kzalloc(sizeof(*offdev), GFP_KERNEL);
 if (!offdev)
  return ERR_PTR(-ENOMEM);

 offdev->ops = ops;
 offdev->priv = priv;
 INIT_LIST_HEAD(&offdev->netdevs);

 return offdev;
}

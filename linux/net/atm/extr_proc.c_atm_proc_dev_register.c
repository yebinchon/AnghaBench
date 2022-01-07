
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int proc_name; int proc_entry; int number; int type; TYPE_1__* ops; } ;
struct TYPE_2__ {int proc_read; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atm_proc_root ;
 int kasprintf (int ,char*,int ,int ) ;
 int kfree (int ) ;
 int proc_atm_dev_ops ;
 int proc_create_data (int ,int ,int ,int *,struct atm_dev*) ;

int atm_proc_dev_register(struct atm_dev *dev)
{
 int error;


 if (!dev->ops->proc_read)
  return 0;

 error = -ENOMEM;
 dev->proc_name = kasprintf(GFP_KERNEL, "%s:%d", dev->type, dev->number);
 if (!dev->proc_name)
  goto err_out;

 dev->proc_entry = proc_create_data(dev->proc_name, 0, atm_proc_root,
        &proc_atm_dev_ops, dev);
 if (!dev->proc_entry)
  goto err_free_name;
 return 0;

err_free_name:
 kfree(dev->proc_name);
err_out:
 return error;
}

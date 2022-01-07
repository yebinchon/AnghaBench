
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_attr {int device_cap_flags; scalar_t__ max_fast_reg_page_list_len; } ;
struct ib_device {int name; struct ib_device_attr attrs; } ;


 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int pr_info (char*,int ) ;

bool frwr_is_supported(struct ib_device *device)
{
 struct ib_device_attr *attrs = &device->attrs;

 if (!(attrs->device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS))
  goto out_not_supported;
 if (attrs->max_fast_reg_page_list_len == 0)
  goto out_not_supported;
 return 1;

out_not_supported:
 pr_info("rpcrdma: 'frwr' mode is not supported by device %s\n",
  device->name);
 return 0;
}

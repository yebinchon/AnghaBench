
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const nvmem_cell ;
struct device {int dummy; } ;


 int EINVAL ;
 size_t ETH_ALEN ;
 scalar_t__ IS_ERR (void const*) ;
 int PTR_ERR (void const*) ;
 int ether_addr_copy (void*,void const*) ;
 int is_valid_ether_addr (void const*) ;
 int kfree (void const*) ;
 void* nvmem_cell_get (struct device*,char*) ;
 int nvmem_cell_put (void const*) ;
 void* nvmem_cell_read (void const*,size_t*) ;

int nvmem_get_mac_address(struct device *dev, void *addrbuf)
{
 struct nvmem_cell *cell;
 const void *mac;
 size_t len;

 cell = nvmem_cell_get(dev, "mac-address");
 if (IS_ERR(cell))
  return PTR_ERR(cell);

 mac = nvmem_cell_read(cell, &len);
 nvmem_cell_put(cell);

 if (IS_ERR(mac))
  return PTR_ERR(mac);

 if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
  kfree(mac);
  return -EINVAL;
 }

 ether_addr_copy(addrbuf, mac);
 kfree(mac);

 return 0;
}

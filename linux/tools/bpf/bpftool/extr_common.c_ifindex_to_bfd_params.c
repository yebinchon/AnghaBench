
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int IF_NAMESIZE ;
 int errno ;
 int ifindex_to_name_ns (int ,int ,int ,char*) ;
 int p_err (char*,...) ;
 int p_info (char*) ;
 int read_sysfs_netdev_hex_int (char*,char*) ;
 int strerror (int ) ;

const char *
ifindex_to_bfd_params(__u32 ifindex, __u64 ns_dev, __u64 ns_ino,
        const char **opt)
{
 char devname[IF_NAMESIZE];
 int vendor_id;
 int device_id;

 if (!ifindex_to_name_ns(ifindex, ns_dev, ns_ino, devname)) {
  p_err("Can't get net device name for ifindex %d: %s", ifindex,
        strerror(errno));
  return ((void*)0);
 }

 vendor_id = read_sysfs_netdev_hex_int(devname, "vendor");
 if (vendor_id < 0) {
  p_err("Can't get device vendor id for %s", devname);
  return ((void*)0);
 }

 switch (vendor_id) {
 case 0x19ee:
  device_id = read_sysfs_netdev_hex_int(devname, "device");
  if (device_id != 0x4000 &&
      device_id != 0x6000 &&
      device_id != 0x6003)
   p_info("Unknown NFP device ID, assuming it is NFP-6xxx arch");
  *opt = "ctx4";
  return "NFP-6xxx";
 default:
  p_err("Can't get bfd arch name for device vendor id 0x%04x",
        vendor_id);
  return ((void*)0);
 }
}

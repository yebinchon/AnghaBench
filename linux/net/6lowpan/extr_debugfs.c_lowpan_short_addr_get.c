
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wpan_dev {int short_addr; } ;


 int le16_to_cpu (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int lowpan_short_addr_get(void *data, u64 *val)
{
 struct wpan_dev *wdev = data;

 rtnl_lock();
 *val = le16_to_cpu(wdev->short_addr);
 rtnl_unlock();

 return 0;
}

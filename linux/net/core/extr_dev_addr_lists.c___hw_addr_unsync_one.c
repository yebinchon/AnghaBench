
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_hw_addr_list {int dummy; } ;
struct netdev_hw_addr {int sync_cnt; int type; int addr; } ;


 int __hw_addr_del_entry (struct netdev_hw_addr_list*,struct netdev_hw_addr*,int,int) ;
 int __hw_addr_del_ex (struct netdev_hw_addr_list*,int ,int,int ,int,int) ;

__attribute__((used)) static void __hw_addr_unsync_one(struct netdev_hw_addr_list *to_list,
     struct netdev_hw_addr_list *from_list,
     struct netdev_hw_addr *ha,
     int addr_len)
{
 int err;

 err = __hw_addr_del_ex(to_list, ha->addr, addr_len, ha->type,
          0, 1);
 if (err)
  return;
 ha->sync_cnt--;

 __hw_addr_del_entry(from_list, ha, 0, 0);
}

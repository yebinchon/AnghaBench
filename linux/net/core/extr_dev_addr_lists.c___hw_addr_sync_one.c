
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_hw_addr_list {int dummy; } ;
struct netdev_hw_addr {int refcount; int sync_cnt; int type; int addr; } ;


 int EEXIST ;
 int __hw_addr_add_ex (struct netdev_hw_addr_list*,int ,int,int ,int,int,int ) ;

__attribute__((used)) static int __hw_addr_sync_one(struct netdev_hw_addr_list *to_list,
          struct netdev_hw_addr *ha,
          int addr_len)
{
 int err;

 err = __hw_addr_add_ex(to_list, ha->addr, addr_len, ha->type,
          0, 1, ha->sync_cnt);
 if (err && err != -EEXIST)
  return err;

 if (!err) {
  ha->sync_cnt++;
  ha->refcount++;
 }

 return 0;
}

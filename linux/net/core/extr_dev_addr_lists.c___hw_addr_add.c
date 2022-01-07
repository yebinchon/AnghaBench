
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_hw_addr_list {int dummy; } ;


 int __hw_addr_add_ex (struct netdev_hw_addr_list*,unsigned char const*,int,unsigned char,int,int,int ) ;

__attribute__((used)) static int __hw_addr_add(struct netdev_hw_addr_list *list,
    const unsigned char *addr, int addr_len,
    unsigned char addr_type)
{
 return __hw_addr_add_ex(list, addr, addr_len, addr_type, 0, 0,
    0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ether_addr_equal_unaligned (void const*,void const*) ;

__attribute__((used)) static inline bool batadv_compare_eth(const void *data1, const void *data2)
{
 return ether_addr_equal_unaligned(data1, data2);
}

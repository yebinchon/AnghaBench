
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t __get_vlan_tinfo_size(void)
{
 return nla_total_size(0) +
    nla_total_size(sizeof(u32)) +
    nla_total_size(sizeof(u16)) +
    nla_total_size(sizeof(u16));
}

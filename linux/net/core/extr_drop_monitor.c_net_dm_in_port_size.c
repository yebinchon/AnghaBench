
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IFNAMSIZ ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t net_dm_in_port_size(void)
{

 return nla_total_size(0) +

        nla_total_size(sizeof(u32)) +

        nla_total_size(IFNAMSIZ + 1);
}

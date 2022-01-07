
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int static_branch_inc (int *) ;
 int udpv6_encap_needed_key ;

void udpv6_encap_enable(void)
{
 static_branch_inc(&udpv6_encap_needed_key);
}

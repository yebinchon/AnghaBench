
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int static_branch_inc (int *) ;
 int udp_encap_needed_key ;

void udp_encap_enable(void)
{
 static_branch_inc(&udp_encap_needed_key);
}

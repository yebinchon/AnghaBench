
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip_tunnel_metadata_cnt ;
 int static_branch_inc (int *) ;

void ip_tunnel_need_metadata(void)
{
 static_branch_inc(&ip_tunnel_metadata_cnt);
}

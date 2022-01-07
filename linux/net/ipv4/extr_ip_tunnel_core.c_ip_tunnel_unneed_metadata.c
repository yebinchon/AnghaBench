
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip_tunnel_metadata_cnt ;
 int static_branch_dec (int *) ;

void ip_tunnel_unneed_metadata(void)
{
 static_branch_dec(&ip_tunnel_metadata_cnt);
}

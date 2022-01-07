
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seg6_pernet_data {int hmac_infos; } ;
struct seg6_hmac_info {int node; } ;
struct net {int dummy; } ;


 int rhashtable_lookup_insert_fast (int *,int *,int ) ;
 int rht_params ;
 struct seg6_pernet_data* seg6_pernet (struct net*) ;

int seg6_hmac_info_add(struct net *net, u32 key, struct seg6_hmac_info *hinfo)
{
 struct seg6_pernet_data *sdata = seg6_pernet(net);
 int err;

 err = rhashtable_lookup_insert_fast(&sdata->hmac_infos, &hinfo->node,
         rht_params);

 return err;
}

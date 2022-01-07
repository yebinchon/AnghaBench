
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seg6_pernet_data {int hmac_infos; } ;
struct seg6_hmac_info {int dummy; } ;
struct net {int dummy; } ;


 struct seg6_hmac_info* rhashtable_lookup_fast (int *,int *,int ) ;
 int rht_params ;
 struct seg6_pernet_data* seg6_pernet (struct net*) ;

struct seg6_hmac_info *seg6_hmac_info_lookup(struct net *net, u32 key)
{
 struct seg6_pernet_data *sdata = seg6_pernet(net);
 struct seg6_hmac_info *hinfo;

 hinfo = rhashtable_lookup_fast(&sdata->hmac_infos, &key, rht_params);

 return hinfo;
}

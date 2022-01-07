
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seg6_pernet_data {int hmac_infos; } ;
struct seg6_hmac_info {int node; } ;
struct net {int dummy; } ;


 int ENOENT ;
 struct seg6_hmac_info* rhashtable_lookup_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int rht_params ;
 int seg6_hinfo_release (struct seg6_hmac_info*) ;
 struct seg6_pernet_data* seg6_pernet (struct net*) ;

int seg6_hmac_info_del(struct net *net, u32 key)
{
 struct seg6_pernet_data *sdata = seg6_pernet(net);
 struct seg6_hmac_info *hinfo;
 int err = -ENOENT;

 hinfo = rhashtable_lookup_fast(&sdata->hmac_infos, &key, rht_params);
 if (!hinfo)
  goto out;

 err = rhashtable_remove_fast(&sdata->hmac_infos, &hinfo->node,
         rht_params);
 if (err)
  goto out;

 seg6_hinfo_release(hinfo);

out:
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {scalar_t__ gro_bitmask; int dev_list; } ;


 int flush_gro_hash (struct napi_struct*) ;
 int list_del_init (int *) ;
 int might_sleep () ;
 int napi_free_frags (struct napi_struct*) ;
 scalar_t__ napi_hash_del (struct napi_struct*) ;
 int synchronize_net () ;

void netif_napi_del(struct napi_struct *napi)
{
 might_sleep();
 if (napi_hash_del(napi))
  synchronize_net();
 list_del_init(&napi->dev_list);
 napi_free_frags(napi);

 flush_gro_hash(napi);
 napi->gro_bitmask = 0;
}

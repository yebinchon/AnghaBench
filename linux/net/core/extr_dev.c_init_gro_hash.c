
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct napi_struct {scalar_t__ gro_bitmask; TYPE_1__* gro_hash; } ;
struct TYPE_2__ {scalar_t__ count; int list; } ;


 int GRO_HASH_BUCKETS ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void init_gro_hash(struct napi_struct *napi)
{
 int i;

 for (i = 0; i < GRO_HASH_BUCKETS; i++) {
  INIT_LIST_HEAD(&napi->gro_hash[i].list);
  napi->gro_hash[i].count = 0;
 }
 napi->gro_bitmask = 0;
}

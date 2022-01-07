
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ima_field_data {int dummy; } ;
struct ima_event_data {TYPE_2__* iint; scalar_t__ violation; } ;
struct TYPE_4__ {TYPE_1__* ima_hash; } ;
struct TYPE_3__ {int algo; int length; int * digest; } ;


 int HASH_ALGO_SHA1 ;
 int ima_eventdigest_init_common (int *,int ,int ,struct ima_field_data*) ;

int ima_eventdigest_ng_init(struct ima_event_data *event_data,
       struct ima_field_data *field_data)
{
 u8 *cur_digest = ((void*)0), hash_algo = HASH_ALGO_SHA1;
 u32 cur_digestsize = 0;

 if (event_data->violation)
  goto out;

 cur_digest = event_data->iint->ima_hash->digest;
 cur_digestsize = event_data->iint->ima_hash->length;

 hash_algo = event_data->iint->ima_hash->algo;
out:
 return ima_eventdigest_init_common(cur_digest, cur_digestsize,
        hash_algo, field_data);
}

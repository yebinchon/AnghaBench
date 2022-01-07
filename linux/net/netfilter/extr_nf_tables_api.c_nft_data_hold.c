
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; TYPE_1__* chain; } ;
struct nft_data {TYPE_2__ verdict; } ;
typedef enum nft_data_types { ____Placeholder_nft_data_types } nft_data_types ;
struct TYPE_3__ {int use; } ;


 int NFT_DATA_VERDICT ;



void nft_data_hold(const struct nft_data *data, enum nft_data_types type)
{
 if (type == NFT_DATA_VERDICT) {
  switch (data->verdict.code) {
  case 128:
  case 129:
   data->verdict.chain->use++;
   break;
  }
 }
}

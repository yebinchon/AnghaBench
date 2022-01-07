
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; TYPE_1__* chain; } ;
struct nft_data {TYPE_2__ verdict; } ;
struct TYPE_3__ {int use; } ;





__attribute__((used)) static void nft_verdict_uninit(const struct nft_data *data)
{
 switch (data->verdict.code) {
 case 128:
 case 129:
  data->verdict.chain->use--;
  break;
 }
}

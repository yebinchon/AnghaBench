
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_data {int dummy; } ;
typedef enum nft_data_types { ____Placeholder_nft_data_types } nft_data_types ;



 int WARN_ON (int) ;
 void nft_verdict_uninit (struct nft_data const*) ;

void nft_data_release(const struct nft_data *data, enum nft_data_types type)
{
 if (type < 128)
  return;
 switch (type) {
 case 128:
  return nft_verdict_uninit(data);
 default:
  WARN_ON(1);
 }
}

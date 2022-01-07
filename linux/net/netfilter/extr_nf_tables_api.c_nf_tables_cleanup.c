
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int NFT_VALIDATE_SKIP ;
 int nft_validate_state_update (struct net*,int ) ;

__attribute__((used)) static void nf_tables_cleanup(struct net *net)
{
 nft_validate_state_update(net, NFT_VALIDATE_SKIP);
}

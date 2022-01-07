
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_rhash_elem {int ext; } ;


 int jhash (int ,int ,int ) ;
 int nft_set_ext_key (int *) ;

__attribute__((used)) static inline u32 nft_rhash_obj(const void *data, u32 len, u32 seed)
{
 const struct nft_rhash_elem *he = data;

 return jhash(nft_set_ext_key(&he->ext), len, seed);
}

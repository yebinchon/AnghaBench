
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nft_set_ext_tmpl {scalar_t__ len; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dlen; int klen; TYPE_1__* ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ elemsize; } ;


 int NFT_SET_EXT_DATA ;
 int NFT_SET_EXT_EXPIRATION ;
 int NFT_SET_EXT_TIMEOUT ;
 scalar_t__ get_jiffies_64 () ;
 void* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,int const*,int ) ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set const*,void*) ;
 int nft_set_ext_data (struct nft_set_ext*) ;
 scalar_t__ nft_set_ext_exists (struct nft_set_ext*,int ) ;
 scalar_t__* nft_set_ext_expiration (struct nft_set_ext*) ;
 int nft_set_ext_init (struct nft_set_ext*,struct nft_set_ext_tmpl const*) ;
 int nft_set_ext_key (struct nft_set_ext*) ;
 scalar_t__* nft_set_ext_timeout (struct nft_set_ext*) ;

void *nft_set_elem_init(const struct nft_set *set,
   const struct nft_set_ext_tmpl *tmpl,
   const u32 *key, const u32 *data,
   u64 timeout, u64 expiration, gfp_t gfp)
{
 struct nft_set_ext *ext;
 void *elem;

 elem = kzalloc(set->ops->elemsize + tmpl->len, gfp);
 if (elem == ((void*)0))
  return ((void*)0);

 ext = nft_set_elem_ext(set, elem);
 nft_set_ext_init(ext, tmpl);

 memcpy(nft_set_ext_key(ext), key, set->klen);
 if (nft_set_ext_exists(ext, NFT_SET_EXT_DATA))
  memcpy(nft_set_ext_data(ext), data, set->dlen);
 if (nft_set_ext_exists(ext, NFT_SET_EXT_EXPIRATION)) {
  *nft_set_ext_expiration(ext) = get_jiffies_64() + expiration;
  if (expiration == 0)
   *nft_set_ext_expiration(ext) += timeout;
 }
 if (nft_set_ext_exists(ext, NFT_SET_EXT_TIMEOUT))
  *nft_set_ext_timeout(ext) = timeout;

 return elem;
}

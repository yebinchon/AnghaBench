
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int mac_len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int tfm0; } ;
struct TYPE_2__ {int hwaddr; } ;
struct mac802154_llsec {TYPE_1__ params; } ;
struct ieee802154_hdr {int sec; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 int crypto_skcipher_encrypt (int ) ;
 int llsec_geniv (int *,int ,int *) ;
 int req ;
 int sg_init_one (struct scatterlist*,unsigned char*,int) ;
 unsigned char* skb_mac_header (struct sk_buff*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,int,int *) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;

__attribute__((used)) static int
llsec_do_encrypt_unauth(struct sk_buff *skb, const struct mac802154_llsec *sec,
   const struct ieee802154_hdr *hdr,
   struct mac802154_llsec_key *key)
{
 u8 iv[16];
 struct scatterlist src;
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, key->tfm0);
 int err, datalen;
 unsigned char *data;

 llsec_geniv(iv, sec->params.hwaddr, &hdr->sec);

 data = skb_mac_header(skb) + skb->mac_len;
 datalen = skb_tail_pointer(skb) - data;
 sg_init_one(&src, data, datalen);

 skcipher_request_set_sync_tfm(req, key->tfm0);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, &src, &src, datalen, iv);
 err = crypto_skcipher_encrypt(req);
 skcipher_request_zero(req);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int mac_len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int tfm0; } ;
struct mac802154_llsec {int dummy; } ;
struct ieee802154_hdr {int sec; } ;
typedef int __le64 ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 int crypto_skcipher_decrypt (int ) ;
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
llsec_do_decrypt_unauth(struct sk_buff *skb, const struct mac802154_llsec *sec,
   const struct ieee802154_hdr *hdr,
   struct mac802154_llsec_key *key, __le64 dev_addr)
{
 u8 iv[16];
 unsigned char *data;
 int datalen;
 struct scatterlist src;
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, key->tfm0);
 int err;

 llsec_geniv(iv, dev_addr, &hdr->sec);
 data = skb_mac_header(skb) + skb->mac_len;
 datalen = skb_tail_pointer(skb) - data;

 sg_init_one(&src, data, datalen);

 skcipher_request_set_sync_tfm(req, key->tfm0);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, &src, &src, datalen, iv);

 err = crypto_skcipher_decrypt(req);
 skcipher_request_zero(req);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int mac_len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int dummy; } ;
struct TYPE_4__ {int hwaddr; } ;
struct mac802154_llsec {TYPE_1__ params; } ;
struct TYPE_5__ {int level; } ;
struct ieee802154_hdr {TYPE_2__ sec; } ;
struct aead_request {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int IEEE802154_SCF_SECLEVEL_ENC ;
 struct aead_request* aead_request_alloc (int ,int ) ;
 int aead_request_set_ad (struct aead_request*,int) ;
 int aead_request_set_callback (struct aead_request*,int ,int *,int *) ;
 int aead_request_set_crypt (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int *) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int ieee802154_sechdr_authtag_len (TYPE_2__*) ;
 int kzfree (struct aead_request*) ;
 int llsec_geniv (int *,int ,TYPE_2__*) ;
 int llsec_tfm_by_len (struct mac802154_llsec_key*,int) ;
 int sg_init_one (struct scatterlist*,unsigned char*,int) ;
 unsigned char* skb_mac_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int
llsec_do_encrypt_auth(struct sk_buff *skb, const struct mac802154_llsec *sec,
        const struct ieee802154_hdr *hdr,
        struct mac802154_llsec_key *key)
{
 u8 iv[16];
 unsigned char *data;
 int authlen, assoclen, datalen, rc;
 struct scatterlist sg;
 struct aead_request *req;

 authlen = ieee802154_sechdr_authtag_len(&hdr->sec);
 llsec_geniv(iv, sec->params.hwaddr, &hdr->sec);

 req = aead_request_alloc(llsec_tfm_by_len(key, authlen), GFP_ATOMIC);
 if (!req)
  return -ENOMEM;

 assoclen = skb->mac_len;

 data = skb_mac_header(skb) + skb->mac_len;
 datalen = skb_tail_pointer(skb) - data;

 skb_put(skb, authlen);

 sg_init_one(&sg, skb_mac_header(skb), assoclen + datalen + authlen);

 if (!(hdr->sec.level & IEEE802154_SCF_SECLEVEL_ENC)) {
  assoclen += datalen;
  datalen = 0;
 }

 aead_request_set_callback(req, 0, ((void*)0), ((void*)0));
 aead_request_set_crypt(req, &sg, &sg, datalen, iv);
 aead_request_set_ad(req, assoclen);

 rc = crypto_aead_encrypt(req);

 kzfree(req);

 return rc;
}

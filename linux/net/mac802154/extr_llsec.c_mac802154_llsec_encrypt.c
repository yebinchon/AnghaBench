
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int mac_len; } ;
struct mac802154_llsec_key {int dummy; } ;
struct TYPE_5__ {int frame_counter; int enabled; } ;
struct mac802154_llsec {int lock; TYPE_2__ params; } ;
struct TYPE_6__ {scalar_t__ level; int frame_counter; } ;
struct TYPE_4__ {scalar_t__ type; int security_enabled; } ;
struct ieee802154_hdr {TYPE_3__ sec; int dest; TYPE_1__ fc; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOKEY ;
 int EOVERFLOW ;
 scalar_t__ IEEE802154_FC_TYPE_DATA ;
 scalar_t__ IEEE802154_MFR_SIZE ;
 scalar_t__ IEEE802154_MTU ;
 scalar_t__ IEEE802154_SCF_SECLEVEL_NONE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_le32 (int) ;
 int ieee802154_hdr_pull (struct sk_buff*,struct ieee802154_hdr*) ;
 int ieee802154_hdr_push (struct sk_buff*,struct ieee802154_hdr*) ;
 int ieee802154_sechdr_authtag_len (TYPE_3__*) ;
 int llsec_do_encrypt (struct sk_buff*,struct mac802154_llsec*,struct ieee802154_hdr*,struct mac802154_llsec_key*) ;
 int llsec_key_put (struct mac802154_llsec_key*) ;
 struct mac802154_llsec_key* llsec_lookup_key (struct mac802154_llsec*,struct ieee802154_hdr*,int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int mac802154_llsec_encrypt(struct mac802154_llsec *sec, struct sk_buff *skb)
{
 struct ieee802154_hdr hdr;
 int rc, authlen, hlen;
 struct mac802154_llsec_key *key;
 u32 frame_ctr;

 hlen = ieee802154_hdr_pull(skb, &hdr);

 if (hlen < 0 || hdr.fc.type != IEEE802154_FC_TYPE_DATA)
  return -EINVAL;

 if (!hdr.fc.security_enabled ||
     (hdr.sec.level == IEEE802154_SCF_SECLEVEL_NONE)) {
  skb_push(skb, hlen);
  return 0;
 }

 authlen = ieee802154_sechdr_authtag_len(&hdr.sec);

 if (skb->len + hlen + authlen + IEEE802154_MFR_SIZE > IEEE802154_MTU)
  return -EMSGSIZE;

 rcu_read_lock();

 read_lock_bh(&sec->lock);

 if (!sec->params.enabled) {
  rc = -EINVAL;
  goto fail_read;
 }

 key = llsec_lookup_key(sec, &hdr, &hdr.dest, ((void*)0));
 if (!key) {
  rc = -ENOKEY;
  goto fail_read;
 }

 read_unlock_bh(&sec->lock);

 write_lock_bh(&sec->lock);

 frame_ctr = be32_to_cpu(sec->params.frame_counter);
 hdr.sec.frame_counter = cpu_to_le32(frame_ctr);
 if (frame_ctr == 0xFFFFFFFF) {
  write_unlock_bh(&sec->lock);
  llsec_key_put(key);
  rc = -EOVERFLOW;
  goto fail;
 }

 sec->params.frame_counter = cpu_to_be32(frame_ctr + 1);

 write_unlock_bh(&sec->lock);

 rcu_read_unlock();

 skb->mac_len = ieee802154_hdr_push(skb, &hdr);
 skb_reset_mac_header(skb);

 rc = llsec_do_encrypt(skb, sec, &hdr, key);
 llsec_key_put(key);

 return rc;

fail_read:
 read_unlock_bh(&sec->lock);
fail:
 rcu_read_unlock();
 return rc;
}

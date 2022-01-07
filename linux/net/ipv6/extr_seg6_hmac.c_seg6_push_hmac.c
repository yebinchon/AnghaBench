
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sr6_tlv_hmac {int hmac; int hmackeyid; } ;
struct seg6_hmac_info {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int SEG6_HMAC_FIELD_LEN ;
 int be32_to_cpu (int ) ;
 int memset (int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sr6_tlv_hmac* seg6_get_tlv_hmac (struct ipv6_sr_hdr*) ;
 int seg6_hmac_compute (struct seg6_hmac_info*,struct ipv6_sr_hdr*,struct in6_addr*,int ) ;
 struct seg6_hmac_info* seg6_hmac_info_lookup (struct net*,int ) ;

int seg6_push_hmac(struct net *net, struct in6_addr *saddr,
     struct ipv6_sr_hdr *srh)
{
 struct seg6_hmac_info *hinfo;
 struct sr6_tlv_hmac *tlv;
 int err = -ENOENT;

 tlv = seg6_get_tlv_hmac(srh);
 if (!tlv)
  return -EINVAL;

 rcu_read_lock();

 hinfo = seg6_hmac_info_lookup(net, be32_to_cpu(tlv->hmackeyid));
 if (!hinfo)
  goto out;

 memset(tlv->hmac, 0, SEG6_HMAC_FIELD_LEN);
 err = seg6_hmac_compute(hinfo, srh, saddr, tlv->hmac);

out:
 rcu_read_unlock();
 return err;
}

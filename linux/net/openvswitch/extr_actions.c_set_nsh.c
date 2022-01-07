
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_6__ {void* path_hdr; void* ttl; void* flags; } ;
struct TYPE_8__ {int context; TYPE_2__ base; } ;
struct sw_flow_key {TYPE_4__ nsh; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int path_hdr; int ttl; int flags; } ;
struct ovs_key_nsh {int * context; TYPE_1__ base; } ;
struct TYPE_7__ {void** context; } ;
struct nshhdr {void* path_hdr; int mdtype; TYPE_3__ md1; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ NSH_BASE_HDR_LEN ;
 int NSH_MD1_CONTEXT_SIZE ;


 void* OVS_MASKED (void*,int ,int ) ;
 int memcpy (int ,void**,int) ;
 int memset (int ,int ,int) ;
 void* nsh_get_flags (struct nshhdr*) ;
 void* nsh_get_ttl (struct nshhdr*) ;
 struct nshhdr* nsh_hdr (struct sk_buff*) ;
 size_t nsh_hdr_len (struct nshhdr*) ;
 int nsh_key_from_nlattr (struct nlattr const*,struct ovs_key_nsh*,struct ovs_key_nsh*) ;
 int nsh_set_flags_and_ttl (struct nshhdr*,void*,void*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_ensure_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,struct nshhdr*,size_t) ;
 int skb_postpush_rcsum (struct sk_buff*,struct nshhdr*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_nsh(struct sk_buff *skb, struct sw_flow_key *flow_key,
     const struct nlattr *a)
{
 struct nshhdr *nh;
 size_t length;
 int err;
 u8 flags;
 u8 ttl;
 int i;

 struct ovs_key_nsh key;
 struct ovs_key_nsh mask;

 err = nsh_key_from_nlattr(a, &key, &mask);
 if (err)
  return err;


 if (!pskb_may_pull(skb, skb_network_offset(skb) + NSH_BASE_HDR_LEN))
  return -ENOMEM;

 nh = nsh_hdr(skb);
 length = nsh_hdr_len(nh);


 err = skb_ensure_writable(skb, skb_network_offset(skb) +
           length);
 if (unlikely(err))
  return err;

 nh = nsh_hdr(skb);
 skb_postpull_rcsum(skb, nh, length);
 flags = nsh_get_flags(nh);
 flags = OVS_MASKED(flags, key.base.flags, mask.base.flags);
 flow_key->nsh.base.flags = flags;
 ttl = nsh_get_ttl(nh);
 ttl = OVS_MASKED(ttl, key.base.ttl, mask.base.ttl);
 flow_key->nsh.base.ttl = ttl;
 nsh_set_flags_and_ttl(nh, flags, ttl);
 nh->path_hdr = OVS_MASKED(nh->path_hdr, key.base.path_hdr,
      mask.base.path_hdr);
 flow_key->nsh.base.path_hdr = nh->path_hdr;
 switch (nh->mdtype) {
 case 129:
  for (i = 0; i < NSH_MD1_CONTEXT_SIZE; i++) {
   nh->md1.context[i] =
       OVS_MASKED(nh->md1.context[i], key.context[i],
           mask.context[i]);
  }
  memcpy(flow_key->nsh.context, nh->md1.context,
         sizeof(nh->md1.context));
  break;
 case 128:
  memset(flow_key->nsh.context, 0,
         sizeof(flow_key->nsh.context));
  break;
 default:
  return -EINVAL;
 }
 skb_postpush_rcsum(skb, nh, length);
 return 0;
}

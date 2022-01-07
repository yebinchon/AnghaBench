
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ hard_header_len; int name; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;


 int DUMP_PREFIX_OFFSET ;
 scalar_t__ IN_DEV_LOG_MARTIANS (struct in_device*) ;
 int KERN_WARNING ;
 int RT_CACHE_STAT_INC (int ) ;
 int in_martian_src ;
 scalar_t__ net_ratelimit () ;
 int pr_warn (char*,int *,int *,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,scalar_t__,int) ;
 int skb_mac_header (struct sk_buff*) ;
 scalar_t__ skb_mac_header_was_set (struct sk_buff*) ;

__attribute__((used)) static void ip_handle_martian_source(struct net_device *dev,
         struct in_device *in_dev,
         struct sk_buff *skb,
         __be32 daddr,
         __be32 saddr)
{
 RT_CACHE_STAT_INC(in_martian_src);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct sk_buff const sk_buff ;
struct TYPE_2__ {int gso_type; int gso_segs; int gso_size; } ;


 int __copy_skb_header (struct sk_buff const*,struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

void skb_copy_header(struct sk_buff *new, const struct sk_buff *old)
{
 __copy_skb_header(new, old);

 skb_shinfo(new)->gso_size = skb_shinfo(old)->gso_size;
 skb_shinfo(new)->gso_segs = skb_shinfo(old)->gso_segs;
 skb_shinfo(new)->gso_type = skb_shinfo(old)->gso_type;
}

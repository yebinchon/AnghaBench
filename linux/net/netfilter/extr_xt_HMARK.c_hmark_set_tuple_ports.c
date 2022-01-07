
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hmark_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hmark_tuple {int uports; int proto; } ;


 int hmark_swap_ports (int *,struct xt_hmark_info const*) ;
 int proto_ports_offset (int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff const*,unsigned int,int *,int) ;

__attribute__((used)) static void
hmark_set_tuple_ports(const struct sk_buff *skb, unsigned int nhoff,
        struct hmark_tuple *t, const struct xt_hmark_info *info)
{
 int protoff;

 protoff = proto_ports_offset(t->proto);
 if (protoff < 0)
  return;

 nhoff += protoff;
 if (skb_copy_bits(skb, nhoff, &t->uports, sizeof(t->uports)) < 0)
  return;

 hmark_swap_ports(&t->uports, info);
}

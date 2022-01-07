
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int __ndisc_opt_addr_space (int,int) ;
 int memcpy (int*,void*,int) ;
 int memset (int*,int ,int) ;
 int* skb_put (struct sk_buff*,int) ;

void __ndisc_fill_addr_option(struct sk_buff *skb, int type, void *data,
         int data_len, int pad)
{
 int space = __ndisc_opt_addr_space(data_len, pad);
 u8 *opt = skb_put(skb, space);

 opt[0] = type;
 opt[1] = space>>3;

 memset(opt + 2, 0, pad);
 opt += pad;
 space -= pad;

 memcpy(opt+2, data, data_len);
 data_len += 2;
 opt += data_len;
 space -= data_len;
 if (space > 0)
  memset(opt, 0, space);
}

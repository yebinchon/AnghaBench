
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int _u ;
typedef int __be16 ;


 int * __skb_header_pointer (struct sk_buff const*,int,int,void*,int,int *) ;

__attribute__((used)) static __be16 skb_flow_get_be16(const struct sk_buff *skb, int poff,
    void *data, int hlen)
{
 __be16 *u, _u;

 u = __skb_header_pointer(skb, poff, sizeof(_u), data, hlen, &_u);
 if (u)
  return *u;

 return 0;
}

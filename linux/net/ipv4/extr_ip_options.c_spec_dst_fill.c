
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef scalar_t__ __be32 ;


 int INADDR_ANY ;
 scalar_t__ fib_compute_spec_dst (struct sk_buff*) ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static void spec_dst_fill(__be32 *spec_dst, struct sk_buff *skb)
{
 if (*spec_dst == htonl(INADDR_ANY))
  *spec_dst = fib_compute_spec_dst(skb);
}

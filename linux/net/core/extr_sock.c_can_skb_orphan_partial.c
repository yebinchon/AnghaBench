
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ destructor; scalar_t__ decrypted; } ;


 int CONFIG_INET ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ sock_wfree ;
 scalar_t__ tcp_wfree ;

__attribute__((used)) static bool can_skb_orphan_partial(const struct sk_buff *skb)
{







 return (skb->destructor == sock_wfree ||
  (IS_ENABLED(CONFIG_INET) && skb->destructor == tcp_wfree));
}

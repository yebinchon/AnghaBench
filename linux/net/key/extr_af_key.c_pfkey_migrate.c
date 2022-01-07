
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int dummy; } ;


 int ENOPROTOOPT ;

__attribute__((used)) static int pfkey_migrate(struct sock *sk, struct sk_buff *skb,
    const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 return -ENOPROTOOPT;
}

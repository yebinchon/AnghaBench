
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_sock {int uc_ttl; } ;
struct dst_entry {int dummy; } ;


 int ip4_dst_hoplimit (struct dst_entry*) ;

__attribute__((used)) static inline int ip_select_ttl(struct inet_sock *inet, struct dst_entry *dst)
{
 int ttl = inet->uc_ttl;

 if (ttl < 0)
  ttl = ip4_dst_hoplimit(dst);
 return ttl;
}

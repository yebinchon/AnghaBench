
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2tp_tunnel {int sock; } ;
struct dst_entry {int dummy; } ;


 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* sk_dst_get (int ) ;

__attribute__((used)) static inline u32 l2tp_tunnel_dst_mtu(const struct l2tp_tunnel *tunnel)
{
 struct dst_entry *dst;
 u32 mtu;

 dst = sk_dst_get(tunnel->sock);
 if (!dst)
  return 0;

 mtu = dst_mtu(dst);
 dst_release(dst);

 return mtu;
}

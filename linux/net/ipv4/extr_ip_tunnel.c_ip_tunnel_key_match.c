
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_parm {int i_flags; scalar_t__ i_key; } ;
typedef scalar_t__ __be32 ;
typedef int __be16 ;


 int TUNNEL_KEY ;

__attribute__((used)) static bool ip_tunnel_key_match(const struct ip_tunnel_parm *p,
    __be16 flags, __be32 key)
{
 if (p->i_flags & TUNNEL_KEY) {
  if (flags & TUNNEL_KEY)
   return key == p->i_key;
  else

   return 0;
 } else
  return !(flags & TUNNEL_KEY);
}

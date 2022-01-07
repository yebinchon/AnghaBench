
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi4 {scalar_t__ saddr; int flowi4_flags; scalar_t__ daddr; } ;
typedef int fl4 ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 int FLOWI_FLAG_KNOWN_NH ;
 int IP_VS_DBG_RL (char*,scalar_t__*) ;
 int IP_VS_RT_MODE_CONNECT ;
 int IP_VS_RT_MODE_KNOWN_NH ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int flowi4_update_output (struct flowi4*,int ,int ,scalar_t__,scalar_t__) ;
 struct rtable* ip_route_output_key (struct net*,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 int memset (struct flowi4*,int ,int) ;

__attribute__((used)) static struct rtable *do_output_route4(struct net *net, __be32 daddr,
           int rt_mode, __be32 *saddr)
{
 struct flowi4 fl4;
 struct rtable *rt;
 bool loop = 0;

 memset(&fl4, 0, sizeof(fl4));
 fl4.daddr = daddr;
 fl4.flowi4_flags = (rt_mode & IP_VS_RT_MODE_KNOWN_NH) ?
      FLOWI_FLAG_KNOWN_NH : 0;

retry:
 rt = ip_route_output_key(net, &fl4);
 if (IS_ERR(rt)) {

  if (PTR_ERR(rt) == -EINVAL && *saddr &&
      rt_mode & IP_VS_RT_MODE_CONNECT && !loop) {
   *saddr = 0;
   flowi4_update_output(&fl4, 0, 0, daddr, 0);
   goto retry;
  }
  IP_VS_DBG_RL("ip_route_output error, dest: %pI4\n", &daddr);
  return ((void*)0);
 } else if (!*saddr && rt_mode & IP_VS_RT_MODE_CONNECT && fl4.saddr) {
  ip_rt_put(rt);
  *saddr = fl4.saddr;
  flowi4_update_output(&fl4, 0, 0, daddr, fl4.saddr);
  loop = 1;
  goto retry;
 }
 *saddr = fl4.saddr;
 return rt;
}

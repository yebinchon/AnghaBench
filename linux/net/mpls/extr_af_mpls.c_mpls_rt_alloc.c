
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpls_route {int rt_nhn; int rt_nhn_alive; int rt_nh_size; int rt_via_offset; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mpls_route* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t MAX_MPLS_ROUTE_MEM ;
 int MPLS_NH_SIZE (int,int) ;
 int MPLS_NH_VIA_OFF (int) ;
 struct mpls_route* kzalloc (size_t,int ) ;

__attribute__((used)) static struct mpls_route *mpls_rt_alloc(u8 num_nh, u8 max_alen, u8 max_labels)
{
 u8 nh_size = MPLS_NH_SIZE(max_labels, max_alen);
 struct mpls_route *rt;
 size_t size;

 size = sizeof(*rt) + num_nh * nh_size;
 if (size > MAX_MPLS_ROUTE_MEM)
  return ERR_PTR(-EINVAL);

 rt = kzalloc(size, GFP_KERNEL);
 if (!rt)
  return ERR_PTR(-ENOMEM);

 rt->rt_nhn = num_nh;
 rt->rt_nhn_alive = num_nh;
 rt->rt_nh_size = nh_size;
 rt->rt_via_offset = MPLS_NH_VIA_OFF(max_labels);

 return rt;
}

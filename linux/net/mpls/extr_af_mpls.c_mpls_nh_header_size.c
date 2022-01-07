
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpls_shim_hdr {int dummy; } ;
struct mpls_nh {int nh_labels; } ;



__attribute__((used)) static unsigned int mpls_nh_header_size(const struct mpls_nh *nh)
{

 return nh->nh_labels * sizeof(struct mpls_shim_hdr);
}

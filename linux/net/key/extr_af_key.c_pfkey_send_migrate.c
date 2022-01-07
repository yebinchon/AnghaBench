
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_selector {int dummy; } ;
struct xfrm_migrate {int dummy; } ;
struct xfrm_kmaddress {int dummy; } ;
struct xfrm_encap_tmpl {int dummy; } ;


 int ENOPROTOOPT ;

__attribute__((used)) static int pfkey_send_migrate(const struct xfrm_selector *sel, u8 dir, u8 type,
         const struct xfrm_migrate *m, int num_bundles,
         const struct xfrm_kmaddress *k,
         const struct xfrm_encap_tmpl *encap)
{
 return -ENOPROTOOPT;
}

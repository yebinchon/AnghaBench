
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowidn {scalar_t__ flowidn_proto; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ IS_ERR (struct dst_entry*) ;
 int PTR_ERR (struct dst_entry*) ;
 int __dn_route_output_key (struct dst_entry**,struct flowidn*,int) ;
 int flowidn_to_flowi (struct flowidn*) ;
 int init_net ;
 struct dst_entry* xfrm_lookup (int *,struct dst_entry*,int ,int *,int ) ;

__attribute__((used)) static int dn_route_output_key(struct dst_entry **pprt, struct flowidn *flp, int flags)
{
 int err;

 err = __dn_route_output_key(pprt, flp, flags);
 if (err == 0 && flp->flowidn_proto) {
  *pprt = xfrm_lookup(&init_net, *pprt,
        flowidn_to_flowi(flp), ((void*)0), 0);
  if (IS_ERR(*pprt)) {
   err = PTR_ERR(*pprt);
   *pprt = ((void*)0);
  }
 }
 return err;
}

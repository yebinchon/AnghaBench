
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net {int dummy; } ;




 int nf_ct_netns_do_get (struct net*,int const) ;
 int nf_ct_netns_inet_get (struct net*) ;
 int nf_ct_netns_put (struct net*,int const) ;

int nf_ct_netns_get(struct net *net, u8 nfproto)
{
 int err;

 switch (nfproto) {
 case 128:
  err = nf_ct_netns_inet_get(net);
  break;
 case 129:
  err = nf_ct_netns_do_get(net, 129);
  if (err < 0)
   return err;

  err = nf_ct_netns_inet_get(net);
  if (err < 0) {
   nf_ct_netns_put(net, 129);
   return err;
  }
  break;
 default:
  err = nf_ct_netns_do_get(net, nfproto);
  break;
 }
 return err;
}

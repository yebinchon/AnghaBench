
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct net {int dummy; } ;




 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int nf_ct_netns_do_put (struct net*,int const) ;

void nf_ct_netns_put(struct net *net, uint8_t nfproto)
{
 switch (nfproto) {
 case 129:
  nf_ct_netns_do_put(net, 129);

 case 128:
  nf_ct_netns_do_put(net, NFPROTO_IPV4);
  nf_ct_netns_do_put(net, NFPROTO_IPV6);
  break;
 default:
  nf_ct_netns_do_put(net, nfproto);
  break;
 }
}

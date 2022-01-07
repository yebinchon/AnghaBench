
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int nf_ct_netns_do_get (struct net*,int ) ;
 int nf_ct_netns_put (struct net*,int ) ;

__attribute__((used)) static int nf_ct_netns_inet_get(struct net *net)
{
 int err;

 err = nf_ct_netns_do_get(net, NFPROTO_IPV4);
 if (err < 0)
  goto err1;
 err = nf_ct_netns_do_get(net, NFPROTO_IPV6);
 if (err < 0)
  goto err2;

 return err;
err2:
 nf_ct_netns_put(net, NFPROTO_IPV4);
err1:
 return err;
}

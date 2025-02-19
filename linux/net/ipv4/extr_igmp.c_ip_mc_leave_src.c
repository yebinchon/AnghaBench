
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_omem_alloc; } ;
struct ip_sf_socklist {int sl_max; int * sl_addr; int sl_count; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ imr_multiaddr; } ;
struct ip_mc_socklist {int sflist; int sfmode; TYPE_2__ multi; } ;
struct in_device {int dummy; } ;


 int IP_SFLSIZE (int ) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int atomic_sub (int ,int *) ;
 int ip_mc_del_src (struct in_device*,int *,int ,int ,int *,int ) ;
 int kfree_rcu (struct ip_sf_socklist*,int ) ;
 int rcu ;
 struct ip_sf_socklist* rtnl_dereference (int ) ;

__attribute__((used)) static int ip_mc_leave_src(struct sock *sk, struct ip_mc_socklist *iml,
      struct in_device *in_dev)
{
 struct ip_sf_socklist *psf = rtnl_dereference(iml->sflist);
 int err;

 if (!psf) {

  return ip_mc_del_src(in_dev, &iml->multi.imr_multiaddr.s_addr,
   iml->sfmode, 0, ((void*)0), 0);
 }
 err = ip_mc_del_src(in_dev, &iml->multi.imr_multiaddr.s_addr,
   iml->sfmode, psf->sl_count, psf->sl_addr, 0);
 RCU_INIT_POINTER(iml->sflist, ((void*)0));

 atomic_sub(IP_SFLSIZE(psf->sl_max), &sk->sk_omem_alloc);
 kfree_rcu(psf, rcu);
 return err;
}

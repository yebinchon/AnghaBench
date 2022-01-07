
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nfs_net {int boot_time; } ;
struct nfs_client {int cl_net; int cl_state; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_verifier ;
typedef int __be32 ;


 int NFS4CLNT_PURGE_STATE ;
 int U32_MAX ;
 int cpu_to_be32 (int) ;
 int ktime_to_ns (int ) ;
 int memcpy (int ,int *,int) ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs_net_id ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs4_init_boot_verifier(const struct nfs_client *clp,
        nfs4_verifier *bootverf)
{
 __be32 verf[2];

 if (test_bit(NFS4CLNT_PURGE_STATE, &clp->cl_state)) {


  verf[0] = cpu_to_be32(U32_MAX);
  verf[1] = cpu_to_be32(U32_MAX);
 } else {
  struct nfs_net *nn = net_generic(clp->cl_net, nfs_net_id);
  u64 ns = ktime_to_ns(nn->boot_time);

  verf[0] = cpu_to_be32(ns >> 32);
  verf[1] = cpu_to_be32(ns);
 }
 memcpy(bootverf->data, verf, sizeof(bootverf->data));
}

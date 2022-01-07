
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int nfssvc_boot; } ;


 int ktime_get_real_ts64 (int *) ;

__attribute__((used)) static void nfsd_reset_boot_verifier_locked(struct nfsd_net *nn)
{
 ktime_get_real_ts64(&nn->nfssvc_boot);
}

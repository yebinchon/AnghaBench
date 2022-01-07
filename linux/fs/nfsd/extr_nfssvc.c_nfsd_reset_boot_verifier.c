
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int boot_lock; } ;


 int nfsd_reset_boot_verifier_locked (struct nfsd_net*) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void nfsd_reset_boot_verifier(struct nfsd_net *nn)
{
 write_seqlock(&nn->boot_lock);
 nfsd_reset_boot_verifier_locked(nn);
 write_sequnlock(&nn->boot_lock);
}

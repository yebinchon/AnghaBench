
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int grace_ended; int nfsd4_manager; } ;


 int locks_end_grace (int *) ;
 int nfsd4_record_grace_done (struct nfsd_net*) ;

void
nfsd4_end_grace(struct nfsd_net *nn)
{

 if (nn->grace_ended)
  return;

 nn->grace_ended = 1;






 nfsd4_record_grace_done(nn);
 locks_end_grace(&nn->nfsd4_manager);





}

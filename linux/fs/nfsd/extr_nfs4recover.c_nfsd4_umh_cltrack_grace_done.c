
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int boot_time; } ;


 int kfree (char*) ;
 char* nfsd4_cltrack_legacy_topdir () ;
 int nfsd4_umh_cltrack_upcall (char*,char*,char*,int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void
nfsd4_umh_cltrack_grace_done(struct nfsd_net *nn)
{
 char *legacy;
 char timestr[22];

 sprintf(timestr, "%ld", nn->boot_time);
 legacy = nfsd4_cltrack_legacy_topdir();
 nfsd4_umh_cltrack_upcall("gracedone", timestr, legacy, ((void*)0));
 kfree(legacy);
}

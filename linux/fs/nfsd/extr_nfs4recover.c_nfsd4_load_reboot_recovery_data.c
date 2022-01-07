
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nfsd4_init_recdir (struct net*) ;
 int nfsd4_recdir_load (struct net*) ;
 int nfsd4_shutdown_recdir (struct net*) ;

__attribute__((used)) static int
nfsd4_load_reboot_recovery_data(struct net *net)
{
 int status;

 status = nfsd4_init_recdir(net);
 if (status)
  return status;

 status = nfsd4_recdir_load(net);
 if (status)
  nfsd4_shutdown_recdir(net);

 return status;
}
